import { Ok, Error } from "./gleam.mjs"
import { WechatError } from "./wechat/object.mjs"

export function showModal(title, content, showCancel, cancelText, cancelColor, confirmText, confirmColor, complete) {
  return new Promise(resolve => {
    wx.showModal({
      title: title,
      content: content,
      showCancel: showCancel,
      cancelText: cancelText,
      cancelColor: cancelColor,
      confirmText: confirmText,
      confirmColor: confirmColor,
      complete: complete,
    });
  });
}

export function showActionSheet(itemList, itemColor, complete) {
  return new Promise(resolve => {
    wx.showActionSheet({
      itemList: itemList,
      itemColor: itemColor,
      complete: complete,
    });
  });
}

export function hideToast(noConflict, complete) {
  return new Promise(resolve => {
    wx.hideToast({
      noConflict: noConflict,
      complete: complete,
    });
  });
}

export function enableAlertBeforeUnload(complete) {
  return new Promise(resolve => {
    wx.enableAlertBeforeUnload({
      complete: complete,
    });
  });
}

export function disableAlertBeforeUnload(complete) {
  return new Promise(resolve => {
    wx.disableAlertBeforeUnload({
      complete: complete,
    });
  });
}

export function showNavigationBarLoading(complete) {
  return new Promise(resolve => {
    wx.showNavigationBarLoading({
      complete: complete,
    });
  });
}

export function setNavigationBarColor(frontColor, backgroundColor, animation, complete) {
  return new Promise(resolve => {
    wx.setNavigationBarColor({
      frontColor: frontColor,
      backgroundColor: backgroundColor,
      animation: animation,
      complete: complete,
    });
  });
}

export function hideNavigationBarLoading(complete) {
  return new Promise(resolve => {
    wx.hideNavigationBarLoading({
      complete: complete,
    });
  });
}

export function hideHomeButton(complete) {
  return new Promise(resolve => {
    wx.hideHomeButton({
      complete: complete,
    });
  });
}

export function setBackgroundTextStyle(textStyle, complete) {
  return new Promise(resolve => {
    wx.setBackgroundTextStyle({
      textStyle: textStyle,
      complete: complete,
    });
  });
}

export function setBackgroundColor(backgroundColor, backgroundColorTop, backgroundColorBottom, complete) {
  return new Promise(resolve => {
    const options = {
      complete: complete,
    };
    if (backgroundColor !== undefined && backgroundColor !== "") {
      options.backgroundColor = backgroundColor;
    }
    if (backgroundColorTop !== undefined && backgroundColorTop !== "") {
      options.backgroundColorTop = backgroundColorTop;
    }
    if (backgroundColorBottom !== undefined && backgroundColorBottom !== "") {
      options.backgroundColorBottom = backgroundColorBottom;
    }
    wx.setBackgroundColor(options);
  });
}

export function showTabBarRedDot(index, complete) {
  return new Promise(resolve => {
    wx.showTabBarRedDot({
      index: index,
      complete: complete,
    });
  });
}

export function setTabBarStyle(color, selectedColor, backgroundColor, borderStyle, complete) {
  return new Promise(resolve => {
    const options = {
      complete: complete,
    };
    if (color !== undefined && color !== "") {
      options.color = color;
    }
    if (selectedColor !== undefined && selectedColor !== "") {
      options.selectedColor = selectedColor;
    }
    if (backgroundColor !== undefined && backgroundColor !== "") {
      options.backgroundColor = backgroundColor;
    }
    if (borderStyle !== undefined && borderStyle !== "") {
      options.borderStyle = borderStyle;
    }
    wx.setTabBarStyle(options);
  });
}

export function setTabBarItem(index, text, iconPath, selectedIconPath, complete) {
  return new Promise(resolve => {
    const options = {
      index: index,
      complete: complete,
    };
    if (text !== undefined && text !== "") {
      options.text = text;
    }
    if (iconPath !== undefined && iconPath !== "") {
      options.iconPath = iconPath;
    }
    if (selectedIconPath !== undefined && selectedIconPath !== "") {
      options.selectedIconPath = selectedIconPath;
    }
    wx.setTabBarItem(options);
  });
}

export function setTabBarBadge(index, text, complete) {
  return new Promise(resolve => {
    wx.setTabBarBadge({
      index: index,
      text: text,
      complete: complete,
    });
  });
}

export function removeTabBarBadge(index, complete) {
  return new Promise(resolve => {
    wx.removeTabBarBadge({
      index: index,
      complete: complete,
    });
  });
}

export function hideTabBarRedDot(index, complete) {
  return new Promise(resolve => {
    wx.hideTabBarRedDot({
      index: index,
      complete: complete,
    });
  });
}

export function stopPullDownRefresh(complete) {
  return new Promise(resolve => {
    wx.stopPullDownRefresh({
      complete: complete,
    });
  });
}

export function startPullDownRefresh(complete) {
  return new Promise(resolve => {
    wx.startPullDownRefresh({
      complete: complete,
    });
  });
}

export function loadFontFace(family, source, global, scopes, desc, complete) {
  return new Promise(resolve => {
    const options = {
      family: family,
      source: source,
      global: global,
      desc: {
        style: desc.style,
        weight: desc.weight,
        variant: desc.variant,
      },
      complete: complete,
    };
    if (scopes && scopes.length > 0) {
      options.scopes = scopes;
    }
    wx.loadFontFace(options);
  });
}

export function loadBuiltInFontFace(family, source, global, scopes, complete) {
  return new Promise(resolve => {
    const options = {
      family: family,
      source: source,
      global: global,
      complete: complete,
    };
    if (scopes && scopes.length > 0) {
      options.scopes = scopes;
    }
    wx.loadBuiltInFontFace(options);
  });
}

export function updateShareMenu(wst, cb) {
  return new Promise(resolve => {
    wx.updateShareMenu({
      withShareTicket: wst,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function showShareMenu(wst, cb) {
  return new Promise(resolve => {
    wx.showShareMenu({
      withShareTicket: wst,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function hideShareMenu(cb) {
  return new Promise(resolve => {
    wx.hideShareMenu({
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function getShareInfo(st, timeout, cb) {
  return new Promise(resolve => {
    wx.getShareInfo({
      shareTicket: st,
      timeout: timeout,
      complete: cb,
      success(res) { resolve(new Ok(res)) },
      fail(err) { resolve(new Error(new WechatError(err.errMsg))) }
    })
  })
}

export function shareAppMessage(title, path, cb) {
  wx.shareAppMessage({
    title: title,
    path: path,
    complete: cb,
  });
}

export function onShareAppMessage(cb) {
  wx.onShareAppMessage(cb);
}

export function offShareAppMessage(cb) {
  wx.offShareAppMessage(cb);
}

// Animation

export function createAnimation(options) {
  return wx.createAnimation(options);
}

export function animationBackgroundColor(anim, color) {
  return anim.backgroundColor(color);
}

export function animationBottom(anim, value) {
  return anim.bottom(value);
}

export function animationHeight(anim, value) {
  return anim.height(value);
}

export function animationLeft(anim, value) {
  return anim.left(value);
}

export function animationRight(anim, value) {
  return anim.right(value);
}

export function animationTop(anim, value) {
  return anim.top(value);
}

export function animationWidth(anim, value) {
  return anim.width(value);
}

export function animationOpacity(anim, value) {
  return anim.opacity(value);
}

export function animationRotate(anim, angle) {
  return anim.rotate(angle);
}

export function animationRotateX(anim, angle) {
  return anim.rotateX(angle);
}

export function animationRotateY(anim, angle) {
  return anim.rotateY(angle);
}

export function animationRotateZ(anim, angle) {
  return anim.rotateZ(angle);
}

export function animationScale(anim, sx, sy) {
  return anim.scale(sx, sy);
}

export function animationScale3d(anim, sx, sy, sz) {
  return anim.scale3d(sx, sy, sz);
}

export function animationScaleX(anim, scale) {
  return anim.scaleX(scale);
}

export function animationScaleY(anim, scale) {
  return anim.scaleY(scale);
}

export function animationScaleZ(anim, scale) {
  return anim.scaleZ(scale);
}

export function animationSkew(anim, ax, ay) {
  return anim.skew(ax, ay);
}

export function animationSkewX(anim, angle) {
  return anim.skewX(angle);
}

export function animationSkewY(anim, angle) {
  return anim.skewY(angle);
}

export function animationTranslate(anim, x, y) {
  return anim.translate(x, y);
}

export function animationTranslate3d(anim, x, y, z) {
  return anim.translate3d(x, y, z);
}

export function animationTranslateX(anim, distance) {
  return anim.translateX(distance);
}

export function animationTranslateY(anim, distance) {
  return anim.translateY(distance);
}

export function animationTranslateZ(anim, distance) {
  return anim.translateZ(distance);
}

export function animationMatrix(anim, a, b, c, d, tx, ty) {
  return anim.matrix(a, b, c, d, tx, ty);
}

export function animationMatrix3d(anim, m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, m41, m42, m43, m44) {
  return anim.matrix3d(m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, m41, m42, m43, m44);
}

export function animationStep(anim, options) {
  return anim.step(options);
}

export function animationExport(anim) {
  return anim.export();
}

