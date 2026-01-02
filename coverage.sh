#!/bin/bash

# WeChat Mini-Program API Coverage Report Generator
# Scans FFI files to count covered wx.* functions

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}WeChat API Coverage Report${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# Create temp directory for reports
TEMP_DIR=$(mktemp -d)
trap "rm -rf $TEMP_DIR" EXIT

# Extract all wx functions from FFI files
echo -e "${YELLOW}Scanning FFI files...${NC}"
grep -rh 'wx\.' src/*_ffi.mjs 2>/dev/null | \
  grep -oP 'wx\.\K[a-zA-Z_]+(?=\()' | \
  sort -u > "$TEMP_DIR/covered.txt"

TOTAL_COVERED=$(wc -l < "$TEMP_DIR/covered.txt")

echo -e "${GREEN}Total wx functions covered: $TOTAL_COVERED${NC}"
echo ""

# Count by FFI module
echo -e "${BLUE}Coverage by FFI Module:${NC}"
echo -e "${BLUE}----------------------------------------${NC}"

for file in src/*_ffi.mjs; do
  if [ -f "$file" ]; then
    name=$(basename "$file" .mjs)
    count=$(grep -oP 'wx\.\K[a-zA-Z_]+(?=\()' "$file" 2>/dev/null | sort -u | wc -l)
    
    if [ "$count" -gt 0 ]; then
      printf "%-30s %3d functions\n" "$name" "$count"
      
      # Store for detailed report
      grep -oP 'wx\.\K[a-zA-Z_]+(?=\()' "$file" 2>/dev/null | \
        sort -u > "$TEMP_DIR/${name}.txt"
    fi
  fi
done

echo ""

# Check for duplicates (functions in multiple FFI files)
echo -e "${YELLOW}Checking for duplicate implementations...${NC}"

# Create temp file to store function locations
> "$TEMP_DIR/func_locations.txt"
for file in src/*_ffi.mjs; do
  if [ -f "$file" ]; then
    grep -oP 'wx\.\K[a-zA-Z_]+(?=\()' "$file" 2>/dev/null | sort -u | while read func; do
      echo "$func:$file" >> "$TEMP_DIR/func_locations.txt"
    done
  fi
done

# Find functions that appear in multiple files
DUPLICATES=$(cat "$TEMP_DIR/func_locations.txt" | cut -d: -f1 | sort | uniq -d)

if [ -n "$DUPLICATES" ]; then
  echo -e "${RED}⚠ Found duplicate implementations:${NC}"
  echo "$DUPLICATES" | while read func; do
    files=$(grep "^$func:" "$TEMP_DIR/func_locations.txt" | cut -d: -f2 | sort -u)
    file_count=$(echo "$files" | wc -l)
    if [ "$file_count" -gt 1 ]; then
      echo -e "  ${RED}- $func${NC}"
      echo "$files" | sed 's/^/    /'
    fi
  done
else
  echo -e "${GREEN}✓ No duplicates found${NC}"
fi

echo ""

# Generate detailed report
REPORT_FILE="COVERAGE_REPORT.md"
echo -e "${YELLOW}Generating detailed report: $REPORT_FILE${NC}"

cat > "$REPORT_FILE" << EOF
# WeChat API Coverage Report

**Generated**: $(date)

## Summary

- **Total wx Functions Covered**: $TOTAL_COVERED
- **Estimated Total in WeChat Docs**: ~600
- **Coverage**: ~$((TOTAL_COVERED * 100 / 600))%

## Coverage by FFI Module

| Module | Count | Functions |
|--------|-------|-----------|
EOF

for file in src/*_ffi.mjs; do
  if [ -f "$file" ]; then
    name=$(basename "$file" .mjs)
    count=$(grep -oP 'wx\.\K[a-zA-Z_]+(?=\()' "$file" 2>/dev/null | sort -u | wc -l)
    
    if [ "$count" -gt 0 ]; then
      funcs=$(grep -oP 'wx\.\K[a-zA-Z_]+(?=\()' "$file" 2>/dev/null | \
        sort -u | head -5 | tr '\n' ', ' | sed 's/,$//' | sed 's/,/, /g')
      echo "| $name | $count | $funcs, ... |" >> "$REPORT_FILE"
    fi
  fi
done

cat >> "$REPORT_FILE" << EOF

## All Covered Functions

\`\`\`
$(cat "$TEMP_DIR/covered.txt")
\`\`\`

## Duplicates

EOF

if [ -n "$DUPLICATES" ]; then
  echo "$DUPLICATES" | while read func; do
    echo "- **$func**" >> "$REPORT_FILE"
    grep -l "wx\.$func(" src/*_ffi.mjs | sed 's/^/  - /' >> "$REPORT_FILE"
  done
else
  echo "No duplicates found." >> "$REPORT_FILE"
fi

cat >> "$REPORT_FILE" << EOF

## Recommendations

### Next Steps
1. Implement high-value missing APIs
2. Fix duplicate implementations
3. Add type definitions for common responses
4. Improve test coverage
EOF

echo -e "${GREEN}✓ Report generated: $REPORT_FILE${NC}"
echo ""

# Summary statistics
echo -e "${BLUE}Quick Stats:${NC}"
echo -e "  Total covered: ${GREEN}$TOTAL_COVERED${NC}"
echo -e "  Estimated missing: ${YELLOW}~$((600 - TOTAL_COVERED))${NC}"
echo -e "  Coverage: ${GREEN}~$((TOTAL_COVERED * 100 / 600))%${NC}"
echo ""

# Check for common patterns
echo -e "${BLUE}Pattern Analysis:${NC}"
ASYNC_COUNT=$(grep -rh 'new Promise' src/*_ffi.mjs 2>/dev/null | wc -l)
SYNC_COUNT=$(grep -rh 'return wx\.' src/*_ffi.mjs 2>/dev/null | grep -v Promise | wc -l)
echo -e "  Async functions: ${YELLOW}$ASYNC_COUNT${NC}"
echo -e "  Sync functions: ${YELLOW}$SYNC_COUNT${NC}"
echo ""

echo -e "${GREEN}✓ Coverage analysis complete!${NC}"
