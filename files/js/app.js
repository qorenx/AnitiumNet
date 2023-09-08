('function' == typeof define && define.amd ? define : function (e, t) {
	'undefined' != typeof module && module.exports ? module.exports = t(require('jquery')) : window.toastr = t(window.jQuery)
})(['jquery'], function (T) {
	return function () {
		function v(e, t) {
			return e = e || b(),
				(y = T('#' + e.containerId)).length || t && (e = e, (y = T('<div/>').attr('id', e.containerId).addClass(e.positionClass)).appendTo(T(e.target))),
				y
		}
		function s(e, t, i) {
			i = !(!i || !i.force) && i.force;
			return e && (i || 0 === T(':focus', e).length) && (e[t.hideMethod]({
				duration: t.hideDuration,
				easing: t.hideEasing,
				complete: function () {
					w(e)
				}
			}), 1)
		}
		function g(e) {
			t && t(e)
		}
		function a(t) {
			function i(e) {
				return (e = null == e ? '' : e).replace(/&/g, '&amp;').replace(/"/g, '&quot;').replace(/'/g, '&#39;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
			}
			function e() {
				t.iconClass && d.addClass(r.toastClass).addClass(o),
					function () {
						{
							var e;
							t.title && (e = t.title, r.escapeHtml && (e = i(t.title)), h.append(e).addClass(r.titleClass), d.append(h))
						}
					}(),
					function () {
						{
							var e;
							t.message && (e = t.message, r.escapeHtml && (e = i(t.message)), c.append(e).addClass(r.messageClass), d.append(c))
						}
					}(),
					r.closeButton && (u.addClass(r.closeClass).attr('role', 'button'), d.prepend(u)),
					r.progressBar && (p.addClass(r.progressClass), d.prepend(p)),
					r.rtl && d.addClass('rtl'),
					r.newestOnTop ? y.prepend(d) : y.append(d),
					function () {
						var e = '';
						switch (t.iconClass) {
							case 'toast-success':
							case 'toast-info':
								e = 'polite';
								break;
							default:
								e = 'assertive'
						}
						d.attr('aria-live', e)
					}()
			}
			function s(e) {
				var t = e && !1 !== r.closeMethod ? r.closeMethod : r.hideMethod,
					i = e && !1 !== r.closeDuration ? r.closeDuration : r.hideDuration,
					s = e && !1 !== r.closeEasing ? r.closeEasing : r.hideEasing;
				if (!T(':focus', d).length || e) return clearTimeout(m.intervalId),
					d[t]({
						duration: i,
						easing: s,
						complete: function () {
							w(d),
								clearTimeout(l),
								r.onHidden && 'hidden' !== f.state && r.onHidden(),
								f.state = 'hidden',
								f.endTime = new Date,
								g(f)
						}
					})
			}
			function a() {
				(0 < r.timeOut || 0 < r.extendedTimeOut) && (l = setTimeout(s, r.extendedTimeOut), m.maxHideTime = parseFloat(r.extendedTimeOut), m.hideEta = (new Date).getTime() + m.maxHideTime)
			}
			function n() {
				clearTimeout(l),
					m.hideEta = 0,
					d.stop(!0, !0)[r.showMethod]({
						duration: r.showDuration,
						easing: r.showEasing
					})
			}
			var r = b(),
				o = t.iconClass || r.iconClass;
			if (void 0 !== t.optionsOverride && (r = T.extend(r, t.optionsOverride), o = t.optionsOverride.iconClass || o), !function (e, t) {
				if (e.preventDuplicates) {
					if (t.message === x) return 1;
					x = t.message
				}
			}(r, t)) {
				E++,
					y = v(r, !0);
				var l = null,
					d = T('<div/>'),
					h = T('<div/>'),
					c = T('<div/>'),
					p = T('<div/>'),
					u = T(r.closeHtml),
					m = {
						intervalId: null,
						hideEta: null,
						maxHideTime: null
					},
					f = {
						toastId: E,
						state: 'visible',
						startTime: new Date,
						options: r,
						map: t
					};
				return e(),
					d.hide(),
					d[r.showMethod]({
						duration: r.showDuration,
						easing: r.showEasing,
						complete: r.onShown
					}),
					0 < r.timeOut && (l = setTimeout(s, r.timeOut), m.maxHideTime = parseFloat(r.timeOut), m.hideEta = (new Date).getTime() + m.maxHideTime, r.progressBar && (m.intervalId = setInterval(function () {
						var e = (m.hideEta - (new Date).getTime()) / m.maxHideTime * 100;
						p.width(e + '%')
					}, 10))),
					r.closeOnHover && d.hover(n, a),
					!r.onclick && r.tapToDismiss && d.click(s),
					r.closeButton && u && u.click(function (e) {
						e.stopPropagation ? e.stopPropagation() : void 0 !== e.cancelBubble && !0 !== e.cancelBubble && (e.cancelBubble = !0),
							r.onCloseClick && r.onCloseClick(e),
							s(!0)
					}),
					r.onclick && d.click(function (e) {
						r.onclick(e),
							s()
					}),
					g(f),
					r.debug && console && console.log(f),
					d
			}
		}
		function b() {
			return T.extend({
			}, {
				tapToDismiss: !0,
				toastClass: 'toast',
				containerId: 'toast-container',
				debug: !1,
				showMethod: 'fadeIn',
				showDuration: 300,
				showEasing: 'swing',
				onShown: void 0,
				hideMethod: 'fadeOut',
				hideDuration: 1000,
				hideEasing: 'swing',
				onHidden: void 0,
				closeMethod: !1,
				closeDuration: !1,
				closeEasing: !1,
				closeOnHover: !0,
				extendedTimeOut: 1000,
				iconClasses: {
					error: 'toast-error',
					info: 'toast-info',
					success: 'toast-success',
					warning: 'toast-warning'
				},
				iconClass: 'toast-info',
				positionClass: 'toast-top-right',
				timeOut: 5000,
				titleClass: 'toast-title',
				messageClass: 'toast-message',
				escapeHtml: !1,
				target: 'body',
				closeHtml: '<button type="button">&times;</button>',
				closeClass: 'toast-close-button',
				newestOnTop: !0,
				preventDuplicates: !1,
				progressBar: !1,
				progressClass: 'toast-progress',
				rtl: !1
			}, e.options)
		}
		function w(e) {
			y = y || v(),
				e.is(':visible') || (e.remove(), e = null, 0 === y.children().length && (y.remove(), x = void 0))
		}
		var y,
			t,
			x,
			E = 0,
			n = 'error',
			r = 'info',
			o = 'success',
			l = 'warning',
			e = {
				clear: function (e, t) {
					var i = b();
					y || v(i),
						s(e, i, t) || function (e) {
							for (var t = y.children(), i = t.length - 1; 0 <= i; i--) s(T(t[i]), e)
						}(i)
				},
				remove: function (e) {
					var t = b();
					return y || v(t),
						e && 0 === T(':focus', e).length ? void w(e) : void (y.children().length && y.remove())
				},
				error: function (e, t, i) {
					return a({
						type: n,
						iconClass: b().iconClasses.error,
						message: e,
						optionsOverride: i,
						title: t
					})
				},
				getContainer: v,
				info: function (e, t, i) {
					return a({
						type: r,
						iconClass: b().iconClasses.info,
						message: e,
						optionsOverride: i,
						title: t
					})
				},
				options: {
				},
				subscribe: function (e) {
					t = e
				},
				success: function (e, t, i) {
					return a({
						type: o,
						iconClass: b().iconClasses.success,
						message: e,
						optionsOverride: i,
						title: t
					})
				},
				version: '2.1.3',
				warning: function (e, t, i) {
					return a({
						type: l,
						iconClass: b().iconClasses.warning,
						message: e,
						optionsOverride: i,
						title: t
					})
				}
			};
		return e
	}()
}),
	function (e) {
		var t = function (s, p, n) {
			'use strict';
			var u,
				m;
			if (function () {
				var e,
					t = {
						lazyClass: 'lazyload',
						loadedClass: 'lazyloaded',
						loadingClass: 'lazyloading',
						preloadClass: 'lazypreload',
						errorClass: 'lazyerror',
						autosizesClass: 'lazyautosizes',
						fastLoadedClass: 'ls-is-cached',
						iframeLoadMode: 0,
						srcAttr: 'data-src',
						srcsetAttr: 'data-srcset',
						sizesAttr: 'data-sizes',
						minSize: 40,
						customMedia: {
						},
						init: !0,
						expFactor: 1.5,
						hFac: 0.8,
						loadMode: 2,
						loadHidden: !0,
						ricTimeout: 0,
						throttleDelay: 125
					};
				for (e in m = s.lazySizesConfig || s.lazysizesConfig || {
				}, t) e in m || (m[e] = t[e])
			}(), !p || !p.getElementsByClassName) return {
				init: function () {
				},
				cfg: m,
				noSupport: !0
			};
			function r(e, t) {
				return de[t] || (de[t] = new RegExp('(\\s|^)' + t + '(\\s|$)')),
					de[t].test(e[ie]('class') || '') && de[t]
			}
			function h(e, t) {
				r(e, t) || e.setAttribute('class', (e[ie]('class') || '').trim() + ' ' + t)
			}
			function c(e, t) {
				(t = r(e, t)) && e.setAttribute('class', (e[ie]('class') || '').replace(t, ' '))
			}
			function f(e, t, i, s, a) {
				var n = p.createEvent('Event');
				return (i = i || {
				}).instance = u,
					n.initEvent(t, !s, !a),
					n.detail = i,
					e.dispatchEvent(n),
					n
			}
			function v(e, t) {
				var i;
				!ee && (i = s.picturefill || m.pf) ? (t && t.src && !e[ie]('srcset') && e.setAttribute('srcset', t.src), i({
					reevaluate: !0,
					elements: [
						e
					]
				})) : t && t.src && (e.src = t.src)
			}
			function g(e, t) {
				return (getComputedStyle(e, null) || {
				})[t]
			}
			function a(e, t, i) {
				for (i = i || e.offsetWidth; i < m.minSize && t && !e._lazysizesWidth;) i = t.offsetWidth,
					t = t.parentNode;
				return i
			}
			function e(i, e) {
				return e ? function () {
					pe(i)
				}
					: function () {
						var e = this,
							t = arguments;
						pe(function () {
							i.apply(e, t)
						})
					}
			}
			function t(e) {
				var t,
					i,
					s = function () {
						t = null,
							e()
					},
					a = function () {
						var e = n.now() - i;
						e < 99 ? ae(a, 99 - e) : (re || s)(s)
					};
				return function () {
					i = n.now(),
						t = t || ae(a, 99)
				}
			}
			var i,
				o,
				l,
				b,
				w,
				y,
				x,
				d,
				E,
				T,
				C,
				S,
				M,
				z,
				$,
				k,
				P,
				L,
				I,
				O,
				D,
				A,
				H,
				B,
				N,
				G,
				V,
				F,
				X,
				Y,
				W,
				R,
				q,
				j,
				_,
				U,
				K,
				Q,
				Z,
				J = p.documentElement,
				ee = s.HTMLPictureElement,
				te = 'addEventListener',
				ie = 'getAttribute',
				se = s[te].bind(s),
				ae = s.setTimeout,
				ne = s.requestAnimationFrame || ae,
				re = s.requestIdleCallback,
				oe = /^picture$/i,
				le = [
					'load',
					'error',
					'lazyincluded',
					'_lazyloaded'
				],
				de = {
				},
				he = Array.prototype.forEach,
				ce = function (t, i, e) {
					var s = e ? te : 'removeEventListener';
					e && ce(t, i),
						le.forEach(function (e) {
							t[s](e, i)
						})
				},
				pe = (Q = [
				], Z = K = [
				], Se._lsFlush = Ce, Se),
				ue = (A = /^img$/i, H = /^iframe$/i, B = 'onscroll' in s && !/(gle|ing)bot/.test(navigator.userAgent), V = - 1, k = we, L = G = N = 0, I = m.throttleDelay, O = m.ricTimeout, D = re && 49 < O ? function () {
					re(ye, {
						timeout: O
					}),
						O !== m.ricTimeout && (O = m.ricTimeout)
				}
					: e(function () {
						ae(ye)
					}, !0), X = e(xe), Y = function (e) {
						X({
							target: e.target
						})
					}, W = e(function (t, e, i, s, a) {
						var n,
							r,
							o,
							l,
							d;
						(o = f(t, 'lazybeforeunveil', e)).defaultPrevented || (s && (i ? h(t, m.autosizesClass) : t.setAttribute('sizes', s)), n = t[ie](m.srcsetAttr), i = t[ie](m.srcAttr), a && (r = (d = t.parentNode) && oe.test(d.nodeName || '')), l = e.firesLoad || 'src' in t && (n || i || r), o = {
							target: t
						}, h(t, m.loadingClass), l && (clearTimeout(y), y = ae(ge, 2500), ce(t, Y, !0)), r && he.call(d.getElementsByTagName('source'), Ee), n ? t.setAttribute('srcset', n) : i && !r && (H.test(t.nodeName) ? (s = i, 0 == (d = (e = t).getAttribute('data-load-mode') || m.iframeLoadMode) ? e.contentWindow.location.replace(s) : 1 == d && (e.src = s)) : t.src = i), a && (n || r) && v(t, {
							src: i
						})),
							t._lazyRace && delete t._lazyRace,
							c(t, m.lazyClass),
							pe(function () {
								var e = t.complete && 1 < t.naturalWidth;
								l && !e || (e && h(t, m.fastLoadedClass), xe(o), t._lazyCache = !0, ae(function () {
									'_lazyCache' in t && delete t._lazyCache
								}, 9)),
									'lazy' == t.loading && G--
							}, !0)
					}), q = t(function () {
						m.loadMode = 3,
							F()
					}), j = function () {
						w || (n.now() - d < 999 ? ae(j, 999) : (w = !0, m.loadMode = 3, F(), se('scroll', Te, !0)))
					}, {
					_: function () {
						d = n.now(),
							u.elements = p.getElementsByClassName(m.lazyClass),
							b = p.getElementsByClassName(m.lazyClass + ' ' + m.preloadClass),
							se('scroll', F, !0),
							se('resize', F, !0),
							se('pageshow', function (e) {
								var t;
								!e.persisted || (t = p.querySelectorAll('.' + m.loadingClass)).length && t.forEach && ne(function () {
									t.forEach(function (e) {
										e.complete && R(e)
									})
								})
							}),
							s.MutationObserver ? new MutationObserver(F).observe(J, {
								childList: !0,
								subtree: !0,
								attributes: !0
							}) : (J[te]('DOMNodeInserted', F, !0), J[te]('DOMAttrModified', F, !0), setInterval(F, 999)),
							se('hashchange', F, !0),
							[
								'focus',
								'mouseover',
								'click',
								'load',
								'transitionend',
								'animationend'
							].forEach(function (e) {
								p[te](e, F, !0)
							}),
							/d$|^c/.test(p.readyState) ? j() : (se('load', j), p[te]('DOMContentLoaded', F), ae(j, 20000)),
							u.elements.length ? (we(), pe._lsFlush()) : F()
					},
					checkElems: F = function (e) {
						var t;
						(e = !0 === e) && (O = 33),
							P || (P = !0, (t = I - (n.now() - L)) < 0 && (t = 0), e || t < 9 ? D() : ae(D, t))
					},
					unveil: R = function (e) {
						var t,
							i,
							s,
							a;
						e._lazyRace || (!(a = 'auto' == (s = (i = A.test(e.nodeName)) && (e[ie](m.sizesAttr) || e[ie]('sizes')))) && w || !i || !e[ie]('src') && !e.srcset || e.complete || r(e, m.errorClass) || !r(e, m.lazyClass)) && (t = f(e, 'lazyunveilread').detail, a && me.updateElem(e, !0, e.offsetWidth), e._lazyRace = !0, G++, W(e, t, a, s, i))
					},
					_aLSL: Te
				}),
				me = (o = e(function (e, t, i, s) {
					var a,
						n,
						r;
					if (e._lazysizesWidth = s, e.setAttribute('sizes', s += 'px'), oe.test(t.nodeName || '')) for (n = 0, r = (a = t.getElementsByTagName('source')).length; n < r; n++) a[n].setAttribute('sizes', s);
					i.detail.dataAttr || v(e, i.detail)
				}), {
					_: function () {
						i = p.getElementsByClassName(m.autosizesClass),
							se('resize', l)
					},
					checkElems: l = t(function () {
						var e,
							t = i.length;
						if (t) for (e = 0; e < t; e++) ve(i[e])
					}),
					updateElem: ve
				}),
				fe = function () {
					!fe.i && p.getElementsByClassName && (fe.i = !0, me._(), ue._())
				};
			function ve(e, t, i) {
				var s = e.parentNode;
				s && (i = a(e, s, i), (t = f(e, 'lazybeforesizes', {
					width: i,
					dataAttr: !!t
				})).defaultPrevented || (i = t.detail.width) && i !== e._lazysizesWidth && o(e, s, t, i))
			}
			function ge(e) {
				G--,
					e && !(G < 0) && e.target || (G = 0)
			}
			function be(e) {
				return ($ = null == $ ? 'hidden' == g(p.body, 'visibility') : $) || !('hidden' == g(e.parentNode, 'visibility') && 'hidden' == g(e, 'visibility'))
			}
			function we() {
				var e,
					t,
					i,
					s,
					a,
					n,
					r,
					o,
					l,
					d,
					h,
					c = u.elements;
				if ((x = m.loadMode) && G < 8 && (e = c.length)) {
					for (t = 0, V++; t < e; t++) if (c[t] && !c[t]._lazyRace) if (!B || u.prematureUnveil && u.prematureUnveil(c[t])) R(c[t]);
					else if ((r = c[t][ie]('data-expand')) && (a = + r) || (a = N), l || (l = !m.expand || m.expand < 1 ? 500 < J.clientHeight && 500 < J.clientWidth ? 500 : 370 : m.expand, d = (u._defEx = l) * m.expFactor, h = m.hFac, $ = null, N < d && G < 1 && 2 < V && 2 < x && !p.hidden ? (N = d, V = 0) : N = 1 < x && 1 < V && G < 6 ? l : 0), o !== a && (E = innerWidth + a * h, T = innerHeight + a, n = - 1 * a, o = a), d = c[t].getBoundingClientRect(), (z = d.bottom) >= n && (C = d.top) <= T && (M = d.right) >= n * h && (S = d.left) <= E && (z || M || S || C) && (m.loadHidden || be(c[t])) && (w && G < 3 && !r && (x < 3 || V < 4) || function (e, t) {
						var i,
							s = e,
							a = be(e);
						for (C -= t, z += t, S -= t, M += t; a && (s = s.offsetParent) && s != p.body && s != J;) (a = 0 < (g(s, 'opacity') || 1)) && 'visible' != g(s, 'overflow') && (i = s.getBoundingClientRect(), a = M > i.left && S < i.right && z > i.top - 1 && C < i.bottom + 1);
						return a
					}(c[t], a))) {
						if (R(c[t]), s = !0, 9 < G) break
					} else !s && w && !i && G < 4 && V < 4 && 2 < x && (b[0] || m.preloadAfterLoad) && (b[0] || !r && (z || M || S || C || 'auto' != c[t][ie](m.sizesAttr))) && (i = b[0] || c[t]);
					i && !s && R(i)
				}
			}
			function ye() {
				P = !1,
					L = n.now(),
					k()
			}
			function xe(e) {
				var t = e.target;
				t._lazyCache ? delete t._lazyCache : (ge(e), h(t, m.loadedClass), c(t, m.loadingClass), ce(t, Y), f(t, 'lazyloaded'))
			}
			function Ee(e) {
				var t,
					i = e[ie](m.srcsetAttr);
				(t = m.customMedia[e[ie]('data-media') || e[ie]('media')]) && e.setAttribute('media', t),
					i && e.setAttribute('srcset', i)
			}
			function Te() {
				3 == m.loadMode && (m.loadMode = 2),
					q()
			}
			function Ce() {
				var e = Z;
				for (Z = K.length ? Q : K, U = !(_ = !0); e.length;) e.shift()();
				_ = !1
			}
			function Se(e, t) {
				_ && !t ? e.apply(this, arguments) : (Z.push(e), U || (U = !0, (p.hidden ? ae : ne)(Ce)))
			}
			return ae(function () {
				m.init && fe()
			}),
				u = {
					cfg: m,
					autoSizer: me,
					loader: ue,
					init: fe,
					uP: v,
					aC: h,
					rC: c,
					hC: r,
					fire: f,
					gW: a,
					rAF: pe
				}
		}(e, e.document, Date);
		e.lazySizes = t,
			'object' == typeof module && module.exports && (module.exports = t)
	}('undefined' != typeof window ? window : {
	}),
	function (e, t) {
		'object' == typeof exports && 'undefined' != typeof module ? module.exports = t() : 'function' == typeof define && define.amd ? define(t) : (e = e || self).Swiper = t()
	}(this, function () {
		'use strict';
		function s(e) {
			return null !== e && 'object' == typeof e && 'constructor' in e && e.constructor === Object
		}
		function a(t, i) {
			void 0 === t && (t = {
			}),
				void 0 === i && (i = {
				}),
				Object.keys(i).forEach(function (e) {
					void 0 === t[e] ? t[e] = i[e] : s(i[e]) && s(t[e]) && 0 < Object.keys(i[e]).length && a(t[e], i[e])
				})
		}
		var c = 'undefined' != typeof document ? document : {
		},
			e = {
				body: {
				},
				addEventListener: function () {
				},
				removeEventListener: function () {
				},
				activeElement: {
					blur: function () {
					},
					nodeName: ''
				},
				querySelector: function () {
					return null
				},
				querySelectorAll: function () {
					return []
				},
				getElementById: function () {
					return null
				},
				createEvent: function () {
					return {
						initEvent: function () {
						}
					}
				},
				createElement: function () {
					return {
						children: [
						],
						childNodes: [
						],
						style: {
						},
						setAttribute: function () {
						},
						getElementsByTagName: function () {
							return []
						}
					}
				},
				createElementNS: function () {
					return {
					}
				},
				importNode: function () {
					return null
				},
				location: {
					hash: '',
					host: '',
					hostname: '',
					href: '',
					origin: '',
					pathname: '',
					protocol: '',
					search: ''
				}
			};
		a(c, e);
		var j = 'undefined' != typeof window ? window : {
		};
		a(j, {
			document: e,
			navigator: {
				userAgent: ''
			},
			location: {
				hash: '',
				host: '',
				hostname: '',
				href: '',
				origin: '',
				pathname: '',
				protocol: '',
				search: ''
			},
			history: {
				replaceState: function () {
				},
				pushState: function () {
				},
				go: function () {
				},
				back: function () {
				}
			},
			CustomEvent: function () {
				return this
			},
			addEventListener: function () {
			},
			removeEventListener: function () {
			},
			getComputedStyle: function () {
				return {
					getPropertyValue: function () {
						return ''
					}
				}
			},
			Image: function () {
			},
			Date: function () {
			},
			screen: {
			},
			setTimeout: function () {
			},
			clearTimeout: function () {
			},
			matchMedia: function () {
				return {
				}
			}
		});
		var l = function (e) {
			for (var t = 0; t < e.length; t += 1) this[t] = e[t];
			return this.length = e.length,
				this
		};
		function E(e, t) {
			var i = [
			],
				s = 0;
			if (e && !t && e instanceof l) return e;
			if (e) if ('string' == typeof e) {
				var a,
					n,
					r = e.trim();
				if (0 <= r.indexOf('<') && 0 <= r.indexOf('>')) {
					var o = 'div';
					for (0 === r.indexOf('<li') && (o = 'ul'), 0 === r.indexOf('<tr') && (o = 'tbody'), 0 !== r.indexOf('<td') && 0 !== r.indexOf('<th') || (o = 'tr'), 0 === r.indexOf('<tbody') && (o = 'table'), 0 === r.indexOf('<option') && (o = 'select'), (n = c.createElement(o)).innerHTML = r, s = 0; s < n.childNodes.length; s += 1) i.push(n.childNodes[s])
				} else for (a = t || '#' !== e[0] || e.match(/[ .<>:~]/) ? (t || c).querySelectorAll(e.trim()) : [
					c.getElementById(e.trim().split('#')[1])
				], s = 0; s < a.length; s += 1) a[s] && i.push(a[s])
			} else if (e.nodeType || e === j || e === c) i.push(e);
			else if (0 < e.length && e[0].nodeType) for (s = 0; s < e.length; s += 1) i.push(e[s]);
			return new l(i)
		}
		function n(e) {
			for (var t = [
			], i = 0; i < e.length; i += 1) - 1 === t.indexOf(e[i]) && t.push(e[i]);
			return t
		}
		E.fn = l.prototype,
			E.Class = l,
			E.Dom7 = l;
		var t = {
			addClass: function (e) {
				if (void 0 === e) return this;
				for (var t = e.split(' '), i = 0; i < t.length; i += 1) for (var s = 0; s < this.length; s += 1) void 0 !== this[s] && void 0 !== this[s].classList && this[s].classList.add(t[i]);
				return this
			},
			removeClass: function (e) {
				for (var t = e.split(' '), i = 0; i < t.length; i += 1) for (var s = 0; s < this.length; s += 1) void 0 !== this[s] && void 0 !== this[s].classList && this[s].classList.remove(t[i]);
				return this
			},
			hasClass: function (e) {
				return !!this[0] && this[0].classList.contains(e)
			},
			toggleClass: function (e) {
				for (var t = e.split(' '), i = 0; i < t.length; i += 1) for (var s = 0; s < this.length; s += 1) void 0 !== this[s] && void 0 !== this[s].classList && this[s].classList.toggle(t[i]);
				return this
			},
			attr: function (e, t) {
				var i = arguments;
				if (1 === arguments.length && 'string' == typeof e) return this[0] ? this[0].getAttribute(e) : void 0;
				for (var s = 0; s < this.length; s += 1) if (2 === i.length) this[s].setAttribute(e, t);
				else for (var a in e) this[s][a] = e[a],
					this[s].setAttribute(a, e[a]);
				return this
			},
			removeAttr: function (e) {
				for (var t = 0; t < this.length; t += 1) this[t].removeAttribute(e);
				return this
			},
			data: function (e, t) {
				var i;
				if (void 0 !== t) {
					for (var s = 0; s < this.length; s += 1) (i = this[s]).dom7ElementDataStorage || (i.dom7ElementDataStorage = {
					}),
						i.dom7ElementDataStorage[e] = t;
					return this
				}
				if (i = this[0]) return i.dom7ElementDataStorage && e in i.dom7ElementDataStorage ? i.dom7ElementDataStorage[e] : i.getAttribute('data-' + e) || void 0
			},
			transform: function (e) {
				for (var t = 0; t < this.length; t += 1) {
					var i = this[t].style;
					i.webkitTransform = e,
						i.transform = e
				}
				return this
			},
			transition: function (e) {
				'string' != typeof e && (e += 'ms');
				for (var t = 0; t < this.length; t += 1) {
					var i = this[t].style;
					i.webkitTransitionDuration = e,
						i.transitionDuration = e
				}
				return this
			},
			on: function () {
				for (var e = [
				], t = arguments.length; t--;) e[t] = arguments[t];
				var i = e[0],
					n = e[1],
					r = e[2],
					s = e[3];
				function a(e) {
					var t = e.target;
					if (t) {
						var i = e.target.dom7EventData || [
						];
						if (i.indexOf(e) < 0 && i.unshift(e), E(t).is(n)) r.apply(t, i);
						else for (var s = E(t).parents(), a = 0; a < s.length; a += 1) E(s[a]).is(n) && r.apply(s[a], i)
					}
				}
				function o(e) {
					var t = e && e.target && e.target.dom7EventData || [
					];
					t.indexOf(e) < 0 && t.unshift(e),
						r.apply(this, t)
				}
				'function' == typeof e[1] && (i = e[0], r = e[1], s = e[2], n = void 0);
				for (var l, s = s || !1, d = i.split(' '), h = 0; h < this.length; h += 1) {
					var c = this[h];
					if (n) for (l = 0; l < d.length; l += 1) {
						var p = d[l];
						c.dom7LiveListeners || (c.dom7LiveListeners = {
						}),
							c.dom7LiveListeners[p] || (c.dom7LiveListeners[p] = [
							]),
							c.dom7LiveListeners[p].push({
								listener: r,
								proxyListener: a
							}),
							c.addEventListener(p, a, s)
					} else for (l = 0; l < d.length; l += 1) {
						var u = d[l];
						c.dom7Listeners || (c.dom7Listeners = {
						}),
							c.dom7Listeners[u] || (c.dom7Listeners[u] = [
							]),
							c.dom7Listeners[u].push({
								listener: r,
								proxyListener: o
							}),
							c.addEventListener(u, o, s)
					}
				}
				return this
			},
			off: function () {
				for (var e = [
				], t = arguments.length; t--;) e[t] = arguments[t];
				var i = e[0],
					s = e[1],
					a = e[2],
					n = e[3];
				'function' == typeof e[1] && (i = e[0], a = e[1], n = e[2], s = void 0);
				for (var n = n || !1, r = i.split(' '), o = 0; o < r.length; o += 1) for (var l = r[o], d = 0; d < this.length; d += 1) {
					var h = this[d],
						c = void 0;
					if (!s && h.dom7Listeners ? c = h.dom7Listeners[l] : s && h.dom7LiveListeners && (c = h.dom7LiveListeners[l]), c && c.length) for (var p = c.length - 1; 0 <= p; --p) {
						var u = c[p];
						!(a && u.listener === a || a && u.listener && u.listener.dom7proxy && u.listener.dom7proxy === a) && a || (h.removeEventListener(l, u.proxyListener, n), c.splice(p, 1))
					}
				}
				return this
			},
			trigger: function () {
				for (var e = [
				], t = arguments.length; t--;) e[t] = arguments[t];
				for (var i = e[0].split(' '), s = e[1], a = 0; a < i.length; a += 1) for (var n = i[a], r = 0; r < this.length; r += 1) {
					var o = this[r],
						l = void 0;
					try {
						l = new j.CustomEvent(n, {
							detail: s,
							bubbles: !0,
							cancelable: !0
						})
					} catch (e) {
						(l = c.createEvent('Event')).initEvent(n, !0, !0),
							l.detail = s
					}
					o.dom7EventData = e.filter(function (e, t) {
						return 0 < t
					}),
						o.dispatchEvent(l),
						o.dom7EventData = [
						],
						delete o.dom7EventData
				}
				return this
			},
			transitionEnd: function (t) {
				var i,
					s = [
						'webkitTransitionEnd',
						'transitionend'
					],
					a = this;
				function n(e) {
					if (e.target === this) for (t.call(this, e), i = 0; i < s.length; i += 1) a.off(s[i], n)
				}
				if (t) for (i = 0; i < s.length; i += 1) a.on(s[i], n);
				return this
			},
			outerWidth: function (e) {
				if (0 < this.length) {
					if (e) {
						e = this.styles();
						return this[0].offsetWidth + parseFloat(e.getPropertyValue('margin-right')) + parseFloat(e.getPropertyValue('margin-left'))
					}
					return this[0].offsetWidth
				}
				return null
			},
			outerHeight: function (e) {
				if (0 < this.length) {
					if (e) {
						e = this.styles();
						return this[0].offsetHeight + parseFloat(e.getPropertyValue('margin-top')) + parseFloat(e.getPropertyValue('margin-bottom'))
					}
					return this[0].offsetHeight
				}
				return null
			},
			offset: function () {
				if (0 < this.length) {
					var e = this[0],
						t = e.getBoundingClientRect(),
						i = c.body,
						s = e.clientTop || i.clientTop || 0,
						a = e.clientLeft || i.clientLeft || 0,
						i = e === j ? j.scrollY : e.scrollTop,
						e = e === j ? j.scrollX : e.scrollLeft;
					return {
						top: t.top + i - s,
						left: t.left + e - a
					}
				}
				return null
			},
			css: function (e, t) {
				var i;
				if (1 === arguments.length) {
					if ('string' != typeof e) {
						for (i = 0; i < this.length; i += 1) for (var s in e) this[i].style[s] = e[s];
						return this
					}
					if (this[0]) return j.getComputedStyle(this[0], null).getPropertyValue(e)
				}
				if (2 !== arguments.length || 'string' != typeof e) return this;
				for (i = 0; i < this.length; i += 1) this[i].style[e] = t;
				return this
			},
			each: function (e) {
				if (!e) return this;
				for (var t = 0; t < this.length; t += 1) if (!1 === e.call(this[t], t, this[t])) return this;
				return this
			},
			html: function (e) {
				if (void 0 === e) return this[0] ? this[0].innerHTML : void 0;
				for (var t = 0; t < this.length; t += 1) this[t].innerHTML = e;
				return this
			},
			text: function (e) {
				if (void 0 === e) return this[0] ? this[0].textContent.trim() : null;
				for (var t = 0; t < this.length; t += 1) this[t].textContent = e;
				return this
			},
			is: function (e) {
				var t,
					i,
					s = this[0];
				if (!s || void 0 === e) return !1;
				if ('string' == typeof e) {
					if (s.matches) return s.matches(e);
					if (s.webkitMatchesSelector) return s.webkitMatchesSelector(e);
					if (s.msMatchesSelector) return s.msMatchesSelector(e);
					for (t = E(e), i = 0; i < t.length; i += 1) if (t[i] === s) return !0;
					return !1
				}
				if (e === c) return s === c;
				if (e === j) return s === j;
				if (e.nodeType || e instanceof l) {
					for (t = e.nodeType ? [
						e
					] : e, i = 0; i < t.length; i += 1) if (t[i] === s) return !0;
					return !1
				}
				return !1
			},
			index: function () {
				var e,
					t = this[0];
				if (t) {
					for (e = 0; null !== (t = t.previousSibling);) 1 === t.nodeType && (e += 1);
					return e
				}
			},
			eq: function (e) {
				if (void 0 === e) return this;
				var t = this.length;
				return new l(t - 1 < e ? [
				] : e < 0 ? (t = t + e) < 0 ? [
				] : [
					this[t]
				] : [
					this[e]
				])
			},
			append: function () {
				for (var e = [
				], t = arguments.length; t--;) e[t] = arguments[t];
				for (var i = 0; i < e.length; i += 1) for (var s = e[i], a = 0; a < this.length; a += 1) if ('string' == typeof s) {
					var n = c.createElement('div');
					for (n.innerHTML = s; n.firstChild;) this[a].appendChild(n.firstChild)
				} else if (s instanceof l) for (var r = 0; r < s.length; r += 1) this[a].appendChild(s[r]);
				else this[a].appendChild(s);
				return this
			},
			prepend: function (e) {
				for (var t, i = 0; i < this.length; i += 1) if ('string' == typeof e) {
					var s = c.createElement('div');
					for (s.innerHTML = e, t = s.childNodes.length - 1; 0 <= t; --t) this[i].insertBefore(s.childNodes[t], this[i].childNodes[0])
				} else if (e instanceof l) for (t = 0; t < e.length; t += 1) this[i].insertBefore(e[t], this[i].childNodes[0]);
				else this[i].insertBefore(e, this[i].childNodes[0]);
				return this
			},
			next: function (e) {
				return 0 < this.length ? e ? this[0].nextElementSibling && E(this[0].nextElementSibling).is(e) ? new l([this[0].nextElementSibling]) : new l([]) : this[0].nextElementSibling ? new l([this[0].nextElementSibling]) : new l([]) : new l([])
			},
			nextAll: function (e) {
				var t = [
				],
					i = this[0];
				if (!i) return new l([]);
				for (; i.nextElementSibling;) {
					var s = i.nextElementSibling;
					e && !E(s).is(e) || t.push(s),
						i = s
				}
				return new l(t)
			},
			prev: function (e) {
				if (0 < this.length) {
					var t = this[0];
					return e ? t.previousElementSibling && E(t.previousElementSibling).is(e) ? new l([t.previousElementSibling]) : new l([]) : t.previousElementSibling ? new l([t.previousElementSibling]) : new l([])
				}
				return new l([])
			},
			prevAll: function (e) {
				var t = [
				],
					i = this[0];
				if (!i) return new l([]);
				for (; i.previousElementSibling;) {
					var s = i.previousElementSibling;
					e && !E(s).is(e) || t.push(s),
						i = s
				}
				return new l(t)
			},
			parent: function (e) {
				for (var t = [
				], i = 0; i < this.length; i += 1) null === this[i].parentNode || e && !E(this[i].parentNode).is(e) || t.push(this[i].parentNode);
				return E(n(t))
			},
			parents: function (e) {
				for (var t = [
				], i = 0; i < this.length; i += 1) for (var s = this[i].parentNode; s;) e && !E(s).is(e) || t.push(s),
					s = s.parentNode;
				return E(n(t))
			},
			closest: function (e) {
				var t = this;
				return void 0 === e ? new l([]) : t = !t.is(e) ? t.parents(e).eq(0) : t
			},
			find: function (e) {
				for (var t = [
				], i = 0; i < this.length; i += 1) for (var s = this[i].querySelectorAll(e), a = 0; a < s.length; a += 1) t.push(s[a]);
				return new l(t)
			},
			children: function (e) {
				for (var t = [
				], i = 0; i < this.length; i += 1) for (var s = this[i].childNodes, a = 0; a < s.length; a += 1) e ? 1 === s[a].nodeType && E(s[a]).is(e) && t.push(s[a]) : 1 === s[a].nodeType && t.push(s[a]);
				return new l(n(t))
			},
			filter: function (e) {
				for (var t = [
				], i = 0; i < this.length; i += 1) e.call(this[i], i, this[i]) && t.push(this[i]);
				return new l(t)
			},
			remove: function () {
				for (var e = 0; e < this.length; e += 1) this[e].parentNode && this[e].parentNode.removeChild(this[e]);
				return this
			},
			add: function () {
				for (var e = [
				], t = arguments.length; t--;) e[t] = arguments[t];
				for (var i = 0; i < e.length; i += 1) for (var s = E(e[i]), a = 0; a < s.length; a += 1) this[this.length] = s[a],
					this.length += 1;
				return this
			},
			styles: function () {
				return this[0] ? j.getComputedStyle(this[0], null) : {
				}
			}
		};
		Object.keys(t).forEach(function (e) {
			E.fn[e] = E.fn[e] || t[e]
		});
		var _ = {
			deleteProps: function (e) {
				var t = e;
				Object.keys(t).forEach(function (e) {
					try {
						t[e] = null
					} catch (e) {
					}
					try {
						delete t[e]
					} catch (e) {
					}
				})
			},
			nextTick: function (e, t) {
				return void 0 === t && (t = 0),
					setTimeout(e, t)
			},
			now: function () {
				return Date.now()
			},
			getTranslate: function (e, t) {
				var i,
					s,
					a;
				void 0 === t && (t = 'x');
				e = j.getComputedStyle(e, null);
				return j.WebKitCSSMatrix ? (6 < (s = e.transform || e.webkitTransform).split(',').length && (s = s.split(', ').map(function (e) {
					return e.replace(',', '.')
				}).join(', ')), a = new j.WebKitCSSMatrix('none' === s ? '' : s)) : i = (a = e.MozTransform || e.OTransform || e.MsTransform || e.msTransform || e.transform || e.getPropertyValue('transform').replace('translate(', 'matrix(1, 0, 0, 1,')).toString().split(','),
					'x' === t && (s = j.WebKitCSSMatrix ? a.m41 : 16 === i.length ? parseFloat(i[12]) : parseFloat(i[4])),
					(s = 'y' === t ? j.WebKitCSSMatrix ? a.m42 : 16 === i.length ? parseFloat(i[13]) : parseFloat(i[5]) : s) || 0
			},
			parseUrlQuery: function (e) {
				var t,
					i,
					s,
					a,
					n = {
					},
					e = e || j.location.href;
				if ('string' == typeof e && e.length) for (a = (i = (e = - 1 < e.indexOf('?') ? e.replace(/\S*\?/, '') : '').split('&').filter(function (e) {
					return '' !== e
				})).length, t = 0; t < a; t += 1) s = i[t].replace(/#\S+/g, '').split('='),
					n[decodeURIComponent(s[0])] = void 0 === s[1] ? void 0 : decodeURIComponent(s[1]) || '';
				return n
			},
			isObject: function (e) {
				return 'object' == typeof e && null !== e && e.constructor && e.constructor === Object
			},
			extend: function () {
				for (var e = [
				], t = arguments.length; t--;) e[t] = arguments[t];
				for (var i = Object(e[0]), s = 1; s < e.length; s += 1) {
					var a = e[s];
					if (null != a) for (var n = Object.keys(Object(a)), r = 0, o = n.length; r < o; r += 1) {
						var l = n[r],
							d = Object.getOwnPropertyDescriptor(a, l);
						void 0 !== d && d.enumerable && (_.isObject(i[l]) && _.isObject(a[l]) ? _.extend(i[l], a[l]) : !_.isObject(i[l]) && _.isObject(a[l]) ? (i[l] = {
						}, _.extend(i[l], a[l])) : i[l] = a[l])
					}
				}
				return i
			}
		},
			y = {
				touch: !!('ontouchstart' in j || j.DocumentTouch && c instanceof j.DocumentTouch),
				pointerEvents: !!j.PointerEvent && 'maxTouchPoints' in j.navigator && 0 <= j.navigator.maxTouchPoints,
				observer: 'MutationObserver' in j || 'WebkitMutationObserver' in j,
				passiveListener: function () {
					var e = !1;
					try {
						var t = Object.defineProperty({
						}, 'passive', {
							get: function () {
								e = !0
							}
						});
						j.addEventListener('testPassiveListener', null, t)
					} catch (e) {
					}
					return e
				}(),
				gestures: 'ongesturestart' in j
			},
			i = function (e) {
				var t = this;
				t.params = e = void 0 === e ? {
				}
					: e,
					t.eventsListeners = {
					},
					t.params && t.params.on && Object.keys(t.params.on).forEach(function (e) {
						t.on(e, t.params.on[e])
					})
			},
			r = {
				components: {
					configurable: !0
				}
			};
		i.prototype.on = function (e, t, i) {
			var s = this;
			if ('function' != typeof t) return s;
			var a = i ? 'unshift' : 'push';
			return e.split(' ').forEach(function (e) {
				s.eventsListeners[e] || (s.eventsListeners[e] = [
				]),
					s.eventsListeners[e][a](t)
			}),
				s
		},
			i.prototype.once = function (i, s, e) {
				var a = this;
				return 'function' != typeof s ? a : (n.f7proxy = s, a.on(i, n, e));
				function n() {
					for (var e = [
					], t = arguments.length; t--;) e[t] = arguments[t];
					a.off(i, n),
						n.f7proxy && delete n.f7proxy,
						s.apply(a, e)
				}
			},
			i.prototype.off = function (e, s) {
				var a = this;
				return a.eventsListeners && e.split(' ').forEach(function (i) {
					void 0 === s ? a.eventsListeners[i] = [
					] : a.eventsListeners[i] && a.eventsListeners[i].length && a.eventsListeners[i].forEach(function (e, t) {
						(e === s || e.f7proxy && e.f7proxy === s) && a.eventsListeners[i].splice(t, 1)
					})
				}),
					a
			},
			i.prototype.emit = function () {
				for (var e = [
				], t = arguments.length; t--;) e[t] = arguments[t];
				var i,
					s,
					a = this;
				if (!a.eventsListeners) return a;
				var n = 'string' == typeof e[0] || Array.isArray(e[0]) ? (i = e[0], s = e.slice(1, e.length), a) : (i = e[0].events, s = e[0].data, e[0].context || a);
				return (Array.isArray(i) ? i : i.split(' ')).forEach(function (e) {
					var t;
					a.eventsListeners && a.eventsListeners[e] && (t = [
					], a.eventsListeners[e].forEach(function (e) {
						t.push(e)
					}), t.forEach(function (e) {
						e.apply(n, s)
					}))
				}),
					a
			},
			i.prototype.useModulesParams = function (t) {
				var i = this;
				i.modules && Object.keys(i.modules).forEach(function (e) {
					e = i.modules[e];
					e.params && _.extend(t, e.params)
				})
			},
			i.prototype.useModules = function (t) {
				void 0 === t && (t = {
				});
				var s = this;
				s.modules && Object.keys(s.modules).forEach(function (e) {
					var i = s.modules[e],
						e = t[e] || {
						};
					i.instance && Object.keys(i.instance).forEach(function (e) {
						var t = i.instance[e];
						s[e] = 'function' == typeof t ? t.bind(s) : t
					}),
						i.on && s.on && Object.keys(i.on).forEach(function (e) {
							s.on(e, i.on[e])
						}),
						i.create && i.create.bind(s)(e)
				})
			},
			r.components.set = function (e) {
				this.use && this.use(e)
			},
			i.installModule = function (t) {
				for (var e = [
				], i = arguments.length - 1; 0 < i--;) e[i] = arguments[i + 1];
				var s = this;
				s.prototype.modules || (s.prototype.modules = {
				});
				var a = t.name || Object.keys(s.prototype.modules).length + '_' + _.now();
				return (s.prototype.modules[a] = t).proto && Object.keys(t.proto).forEach(function (e) {
					s.prototype[e] = t.proto[e]
				}),
					t.static && Object.keys(t.static).forEach(function (e) {
						s[e] = t.static[e]
					}),
					t.install && t.install.apply(s, e),
					s
			},
			i.use = function (e) {
				for (var t = [
				], i = arguments.length - 1; 0 < i--;) t[i] = arguments[i + 1];
				var s = this;
				return Array.isArray(e) ? (e.forEach(function (e) {
					return s.installModule(e)
				}), s) : s.installModule.apply(s, [
					e
				].concat(t))
			},
			Object.defineProperties(i, r);
		var o,
			d,
			h,
			p,
			u,
			m,
			f,
			v,
			g,
			b,
			w,
			x,
			T = {
				updateSize: function () {
					var e = this.$el,
						t = void 0 !== this.params.width ? this.params.width : e[0].clientWidth,
						i = void 0 !== this.params.height ? this.params.height : e[0].clientHeight;
					0 === t && this.isHorizontal() || 0 === i && this.isVertical() || (t = t - parseInt(e.css('padding-left'), 10) - parseInt(e.css('padding-right'), 10), i = i - parseInt(e.css('padding-top'), 10) - parseInt(e.css('padding-bottom'), 10), _.extend(this, {
						width: t,
						height: i,
						size: this.isHorizontal() ? t : i
					}))
				},
				updateSlides: function () {
					var t = this.params,
						e = this.$wrapperEl,
						i = this.size,
						s = this.rtlTranslate,
						a = this.wrongRTL,
						n = this.virtual && t.virtual.enabled,
						r = (n ? this.virtual : this).slides.length,
						o = e.children('.' + this.params.slideClass),
						l = (n ? this.virtual.slides : o).length,
						d = [
						],
						h = [
						],
						c = [
						];
					function p(e) {
						return !t.cssMode || e !== o.length - 1
					}
					var u = t.slidesOffsetBefore;
					'function' == typeof u && (u = t.slidesOffsetBefore.call(this));
					var m = t.slidesOffsetAfter;
					'function' == typeof m && (m = t.slidesOffsetAfter.call(this));
					var f,
						v = this.snapGrid.length,
						n = this.snapGrid.length,
						g = t.spaceBetween,
						b = - u,
						w = 0,
						y = 0;
					if (void 0 !== i) {
						'string' == typeof g && 0 <= g.indexOf('%') && (g = parseFloat(g.replace('%', '')) / 100 * i),
							this.virtualSize = - g,
							s ? o.css({
								marginLeft: '',
								marginTop: ''
							}) : o.css({
								marginRight: '',
								marginBottom: ''
							}),
							1 < t.slidesPerColumn && (f = Math.floor(l / t.slidesPerColumn) === l / this.params.slidesPerColumn ? l : Math.ceil(l / t.slidesPerColumn) * t.slidesPerColumn, 'auto' !== t.slidesPerView && 'row' === t.slidesPerColumnFill && (f = Math.max(f, t.slidesPerView * t.slidesPerColumn)));
						for (var x, E, T, C, S = t.slidesPerColumn, M = f / S, z = Math.floor(l / t.slidesPerColumn), $ = 0; $ < l; $ += 1) {
							D = 0;
							var k,
								P,
								L,
								I,
								O,
								D,
								A,
								H,
								B,
								N,
								G,
								V,
								F = o.eq($);
							1 < t.slidesPerColumn && (O = I = L = void 0, 'row' === t.slidesPerColumnFill && 1 < t.slidesPerGroup ? (V = Math.floor($ / (t.slidesPerGroup * t.slidesPerColumn)), k = $ - t.slidesPerColumn * t.slidesPerGroup * V, P = 0 === V ? t.slidesPerGroup : Math.min(Math.ceil((l - V * S * t.slidesPerGroup) / S), t.slidesPerGroup), L = (I = k - (O = Math.floor(k / P)) * P + V * t.slidesPerGroup) + O * f / S, F.css({
								'-webkit-box-ordinal-group': L,
								'-moz-box-ordinal-group': L,
								'-ms-flex-order': L,
								'-webkit-order': L,
								order: L
							})) : 'column' === t.slidesPerColumnFill ? (O = $ - (I = Math.floor($ / S)) * S, (z < I || I === z && O === S - 1) && (O += 1) >= S && (O = 0, I += 1)) : I = $ - (O = Math.floor($ / M)) * M, F.css('margin-' + (this.isHorizontal() ? 'top' : 'left'), 0 !== O && t.spaceBetween && t.spaceBetween + 'px')),
								'none' !== F.css('display') && ('auto' === t.slidesPerView ? (V = j.getComputedStyle(F[0], null), L = F[0].style.transform, I = F[0].style.webkitTransform, L && (F[0].style.transform = 'none'), I && (F[0].style.webkitTransform = 'none'), D = t.roundLengths ? this.isHorizontal() ? F.outerWidth(!0) : F.outerHeight(!0) : this.isHorizontal() ? (A = parseFloat(V.getPropertyValue('width')), H = parseFloat(V.getPropertyValue('padding-left')), B = parseFloat(V.getPropertyValue('padding-right')), N = parseFloat(V.getPropertyValue('margin-left')), G = parseFloat(V.getPropertyValue('margin-right')), (O = V.getPropertyValue('box-sizing')) && 'border-box' === O ? A + N + G : A + H + B + N + G) : (A = parseFloat(V.getPropertyValue('height')), H = parseFloat(V.getPropertyValue('padding-top')), B = parseFloat(V.getPropertyValue('padding-bottom')), N = parseFloat(V.getPropertyValue('margin-top')), G = parseFloat(V.getPropertyValue('margin-bottom')), (V = V.getPropertyValue('box-sizing')) && 'border-box' === V ? A + N + G : A + H + B + N + G), L && (F[0].style.transform = L), I && (F[0].style.webkitTransform = I), t.roundLengths && (D = Math.floor(D))) : (D = (i - (t.slidesPerView - 1) * g) / t.slidesPerView, t.roundLengths && (D = Math.floor(D)), o[$] && (this.isHorizontal() ? o[$].style.width = D + 'px' : o[$].style.height = D + 'px')), o[$] && (o[$].swiperSlideSize = D), c.push(D), t.centeredSlides ? (b = b + D / 2 + w / 2 + g, 0 === w && 0 !== $ && (b = b - i / 2 - g), 0 === $ && (b = b - i / 2 - g), Math.abs(b) < 0.001 && (b = 0), t.roundLengths && (b = Math.floor(b)), y % t.slidesPerGroup == 0 && d.push(b), h.push(b)) : (t.roundLengths && (b = Math.floor(b)), (y - Math.min(this.params.slidesPerGroupSkip, y)) % this.params.slidesPerGroup == 0 && d.push(b), h.push(b), b = b + D + g), this.virtualSize += D + g, w = D, y += 1)
						}
						if (this.virtualSize = Math.max(this.virtualSize, i) + m, s && a && ('slide' === t.effect || 'coverflow' === t.effect) && e.css({
							width: this.virtualSize + t.spaceBetween + 'px'
						}), t.setWrapperSize && (this.isHorizontal() ? e.css({
							width: this.virtualSize + t.spaceBetween + 'px'
						}) : e.css({
							height: this.virtualSize + t.spaceBetween + 'px'
						})), 1 < t.slidesPerColumn && (this.virtualSize = (D + t.spaceBetween) * f, this.virtualSize = Math.ceil(this.virtualSize / t.slidesPerColumn) - t.spaceBetween, this.isHorizontal() ? e.css({
							width: this.virtualSize + t.spaceBetween + 'px'
						}) : e.css({
							height: this.virtualSize + t.spaceBetween + 'px'
						}), t.centeredSlides)) {
							for (var X = [
							], Y = 0; Y < d.length; Y += 1) {
								var W = d[Y];
								t.roundLengths && (W = Math.floor(W)),
									d[Y] < this.virtualSize + d[0] && X.push(W)
							}
							d = X
						}
						if (!t.centeredSlides) {
							X = [
							];
							for (var R = 0; R < d.length; R += 1) {
								var q = d[R];
								t.roundLengths && (q = Math.floor(q)),
									d[R] <= this.virtualSize - i && X.push(q)
							}
							d = X,
								1 < Math.floor(this.virtualSize - i) - Math.floor(d[d.length - 1]) && d.push(this.virtualSize - i)
						}
						0 === d.length && (d = [
							0
						]),
							0 !== t.spaceBetween && (this.isHorizontal() ? s ? o.filter(p).css({
								marginLeft: g + 'px'
							}) : o.filter(p).css({
								marginRight: g + 'px'
							}) : o.filter(p).css({
								marginBottom: g + 'px'
							})),
							t.centeredSlides && t.centeredSlidesBounds && (x = 0, c.forEach(function (e) {
								x += e + (t.spaceBetween || 0)
							}), E = (x -= t.spaceBetween) - i, d = d.map(function (e) {
								return e < 0 ? - u : E < e ? E + m : e
							})),
							t.centerInsufficientSlides && (T = 0, c.forEach(function (e) {
								T += e + (t.spaceBetween || 0)
							}), (T -= t.spaceBetween) < i && (C = (i - T) / 2, d.forEach(function (e, t) {
								d[t] = e - C
							}), h.forEach(function (e, t) {
								h[t] = e + C
							}))),
							_.extend(this, {
								slides: o,
								snapGrid: d,
								slidesGrid: h,
								slidesSizesGrid: c
							}),
							l !== r && this.emit('slidesLengthChange'),
							d.length !== v && (this.params.watchOverflow && this.checkOverflow(), this.emit('snapGridLengthChange')),
							h.length !== n && this.emit('slidesGridLengthChange'),
							(t.watchSlidesProgress || t.watchSlidesVisibility) && this.updateSlidesOffset()
					}
				},
				updateAutoHeight: function (e) {
					var t,
						i,
						s = [
						],
						a = 0;
					if ('number' == typeof e ? this.setTransition(e) : !0 === e && this.setTransition(this.params.speed), 'auto' !== this.params.slidesPerView && 1 < this.params.slidesPerView) if (this.params.centeredSlides) this.visibleSlides.each(function (e, t) {
						s.push(t)
					});
					else for (t = 0; t < Math.ceil(this.params.slidesPerView); t += 1) {
						var n = this.activeIndex + t;
						if (n > this.slides.length) break;
						s.push(this.slides.eq(n)[0])
					} else s.push(this.slides.eq(this.activeIndex)[0]);
					for (t = 0; t < s.length; t += 1) void 0 !== s[t] && (a = a < (i = s[t].offsetHeight) ? i : a);
					a && this.$wrapperEl.css('height', a + 'px')
				},
				updateSlidesOffset: function () {
					for (var e = this.slides, t = 0; t < e.length; t += 1) e[t].swiperSlideOffset = this.isHorizontal() ? e[t].offsetLeft : e[t].offsetTop
				},
				updateSlidesProgress: function (e) {
					void 0 === e && (e = this && this.translate || 0);
					var t = this.params,
						i = this.slides,
						s = this.rtlTranslate;
					if (0 !== i.length) {
						void 0 === i[0].swiperSlideOffset && this.updateSlidesOffset();
						var a = s ? e : - e;
						i.removeClass(t.slideVisibleClass),
							this.visibleSlidesIndexes = [
							],
							this.visibleSlides = [
							];
						for (var n = 0; n < i.length; n += 1) {
							var r,
								o,
								l = i[n],
								d = (a + (t.centeredSlides ? this.minTranslate() : 0) - l.swiperSlideOffset) / (l.swiperSlideSize + t.spaceBetween);
							(t.watchSlidesVisibility || t.centeredSlides && t.autoHeight) && (o = (r = - (a - l.swiperSlideOffset)) + this.slidesSizesGrid[n], (0 <= r && r < this.size - 1 || 1 < o && o <= this.size || r <= 0 && o >= this.size) && (this.visibleSlides.push(l), this.visibleSlidesIndexes.push(n), i.eq(n).addClass(t.slideVisibleClass))),
								l.progress = s ? - d : d
						}
						this.visibleSlides = E(this.visibleSlides)
					}
				},
				updateProgress: function (e) {
					void 0 === e && (r = this.rtlTranslate ? - 1 : 1, e = this && this.translate && this.translate * r || 0);
					var t = this.params,
						i = this.maxTranslate() - this.minTranslate(),
						s = this.progress,
						a = this.isBeginning,
						n = a,
						r = o = this.isEnd,
						o = 0 == i ? a = !(s = 0) : (a = (s = (e - this.minTranslate()) / i) <= 0, 1 <= s);
					_.extend(this, {
						progress: s,
						isBeginning: a,
						isEnd: o
					}),
						(t.watchSlidesProgress || t.watchSlidesVisibility || t.centeredSlides && t.autoHeight) && this.updateSlidesProgress(e),
						a && !n && this.emit('reachBeginning toEdge'),
						o && !r && this.emit('reachEnd toEdge'),
						(n && !a || r && !o) && this.emit('fromEdge'),
						this.emit('progress', s)
				},
				updateSlidesClasses: function () {
					var e = this.slides,
						t = this.params,
						i = this.$wrapperEl,
						s = this.activeIndex,
						a = this.realIndex,
						n = this.virtual && t.virtual.enabled;
					e.removeClass(t.slideActiveClass + ' ' + t.slideNextClass + ' ' + t.slidePrevClass + ' ' + t.slideDuplicateActiveClass + ' ' + t.slideDuplicateNextClass + ' ' + t.slideDuplicatePrevClass),
						(s = n ? this.$wrapperEl.find('.' + t.slideClass + '[data-swiper-slide-index="' + s + '"]') : e.eq(s)).addClass(t.slideActiveClass),
						t.loop && (s.hasClass(t.slideDuplicateClass) ? i.children('.' + t.slideClass + ':not(.' + t.slideDuplicateClass + ')[data-swiper-slide-index="' + a + '"]') : i.children('.' + t.slideClass + '.' + t.slideDuplicateClass + '[data-swiper-slide-index="' + a + '"]')).addClass(t.slideDuplicateActiveClass);
					a = s.nextAll('.' + t.slideClass).eq(0).addClass(t.slideNextClass);
					t.loop && 0 === a.length && (a = e.eq(0)).addClass(t.slideNextClass);
					s = s.prevAll('.' + t.slideClass).eq(0).addClass(t.slidePrevClass);
					t.loop && 0 === s.length && (s = e.eq(- 1)).addClass(t.slidePrevClass),
						t.loop && ((a.hasClass(t.slideDuplicateClass) ? i.children('.' + t.slideClass + ':not(.' + t.slideDuplicateClass + ')[data-swiper-slide-index="' + a.attr('data-swiper-slide-index') + '"]') : i.children('.' + t.slideClass + '.' + t.slideDuplicateClass + '[data-swiper-slide-index="' + a.attr('data-swiper-slide-index') + '"]')).addClass(t.slideDuplicateNextClass), (s.hasClass(t.slideDuplicateClass) ? i.children('.' + t.slideClass + ':not(.' + t.slideDuplicateClass + ')[data-swiper-slide-index="' + s.attr('data-swiper-slide-index') + '"]') : i.children('.' + t.slideClass + '.' + t.slideDuplicateClass + '[data-swiper-slide-index="' + s.attr('data-swiper-slide-index') + '"]')).addClass(t.slideDuplicatePrevClass))
				},
				updateActiveIndex: function (e) {
					var t = this.rtlTranslate ? this.translate : - this.translate,
						i = this.slidesGrid,
						s = this.snapGrid,
						a = this.params,
						n = this.activeIndex,
						r = this.realIndex,
						o = this.snapIndex,
						l = e;
					if (void 0 === l) {
						for (var d = 0; d < i.length; d += 1) void 0 !== i[d + 1] ? t >= i[d] && t < i[d + 1] - (i[d + 1] - i[d]) / 2 ? l = d : t >= i[d] && t < i[d + 1] && (l = d + 1) : t >= i[d] && (l = d);
						a.normalizeSlideIndex && (l < 0 || void 0 === l) && (l = 0)
					} (a = 0 <= s.indexOf(t) ? s.indexOf(t) : (e = Math.min(a.slidesPerGroupSkip, l)) + Math.floor((l - e) / a.slidesPerGroup)) >= s.length && (a = s.length - 1),
						l !== n ? (s = parseInt(this.slides.eq(l).attr('data-swiper-slide-index') || l, 10), _.extend(this, {
							snapIndex: a,
							realIndex: s,
							previousIndex: n,
							activeIndex: l
						}), this.emit('activeIndexChange'), this.emit('snapIndexChange'), r !== s && this.emit('realIndexChange'), (this.initialized || this.params.runCallbacksOnInit) && this.emit('slideChange')) : a !== o && (this.snapIndex = a, this.emit('snapIndexChange'))
				},
				updateClickedSlide: function (e) {
					var t = this.params,
						i = E(e.target).closest('.' + t.slideClass)[0],
						s = !1;
					if (i) for (var a = 0; a < this.slides.length; a += 1) this.slides[a] === i && (s = !0);
					if (!i || !s) return this.clickedSlide = void 0,
						void (this.clickedIndex = void 0);
					this.clickedSlide = i,
						this.virtual && this.params.virtual.enabled ? this.clickedIndex = parseInt(E(i).attr('data-swiper-slide-index'), 10) : this.clickedIndex = E(i).index(),
						t.slideToClickedSlide && void 0 !== this.clickedIndex && this.clickedIndex !== this.activeIndex && this.slideToClickedSlide()
				}
			},
			C = {
				getTranslate: function (e) {
					void 0 === e && (e = this.isHorizontal() ? 'x' : 'y');
					var t = this.params,
						i = this.rtlTranslate,
						s = this.translate,
						a = this.$wrapperEl;
					if (t.virtualTranslate) return i ? - s : s;
					if (t.cssMode) return s;
					e = _.getTranslate(a[0], e);
					return (e = i ? - e : e) || 0
				},
				setTranslate: function (e, t) {
					var i = this.rtlTranslate,
						s = this.params,
						a = this.$wrapperEl,
						n = this.wrapperEl,
						r = this.progress,
						o = 0,
						l = 0;
					this.isHorizontal() ? o = i ? - e : e : l = e,
						s.roundLengths && (o = Math.floor(o), l = Math.floor(l)),
						s.cssMode ? n[this.isHorizontal() ? 'scrollLeft' : 'scrollTop'] = this.isHorizontal() ? - o : - l : s.virtualTranslate || a.transform('translate3d(' + o + 'px, ' + l + 'px, 0px)'),
						this.previousTranslate = this.translate,
						this.translate = this.isHorizontal() ? o : l;
					l = this.maxTranslate() - this.minTranslate();
					(0 == l ? 0 : (e - this.minTranslate()) / l) !== r && this.updateProgress(e),
						this.emit('setTranslate', this.translate, t)
				},
				minTranslate: function () {
					return - this.snapGrid[0]
				},
				maxTranslate: function () {
					return - this.snapGrid[this.snapGrid.length - 1]
				},
				translateTo: function (e, t, i, s, a) {
					void 0 === e && (e = 0),
						void 0 === t && (t = this.params.speed),
						void 0 === i && (i = !0),
						void 0 === s && (s = !0);
					var n = this,
						r = n.params,
						o = n.wrapperEl;
					if (n.animating && r.preventInteractionOnTransition) return !1;
					var l = n.minTranslate(),
						d = n.maxTranslate(),
						d = s && l < e ? l : s && e < d ? d : e;
					if (n.updateProgress(d), r.cssMode) {
						e = n.isHorizontal();
						return 0 !== t && o.scrollTo ? o.scrollTo(((r = {
						})[e ? 'left' : 'top'] = - d, r.behavior = 'smooth', r)) : o[e ? 'scrollLeft' : 'scrollTop'] = - d,
							!0
					}
					return 0 === t ? (n.setTransition(0), n.setTranslate(d), i && (n.emit('beforeTransitionStart', t, a), n.emit('transitionEnd'))) : (n.setTransition(t), n.setTranslate(d), i && (n.emit('beforeTransitionStart', t, a), n.emit('transitionStart')), n.animating || (n.animating = !0, n.onTranslateToWrapperTransitionEnd || (n.onTranslateToWrapperTransitionEnd = function (e) {
						n && !n.destroyed && e.target === this && (n.$wrapperEl[0].removeEventListener('transitionend', n.onTranslateToWrapperTransitionEnd), n.$wrapperEl[0].removeEventListener('webkitTransitionEnd', n.onTranslateToWrapperTransitionEnd), n.onTranslateToWrapperTransitionEnd = null, delete n.onTranslateToWrapperTransitionEnd, i && n.emit('transitionEnd'))
					}), n.$wrapperEl[0].addEventListener('transitionend', n.onTranslateToWrapperTransitionEnd), n.$wrapperEl[0].addEventListener('webkitTransitionEnd', n.onTranslateToWrapperTransitionEnd))),
						!0
				}
			},
			S = {
				slideTo: function (e, t, i, s) {
					void 0 === t && (t = this.params.speed),
						void 0 === i && (i = !0);
					var a = this,
						n = e = void 0 === e ? 0 : e;
					n < 0 && (n = 0);
					var r = a.params,
						o = a.snapGrid,
						l = a.slidesGrid,
						d = a.previousIndex,
						h = a.activeIndex,
						c = a.rtlTranslate,
						p = a.wrapperEl;
					if (a.animating && r.preventInteractionOnTransition) return !1;
					e = Math.min(a.params.slidesPerGroupSkip, n),
						e += Math.floor((n - e) / a.params.slidesPerGroup);
					e >= o.length && (e = o.length - 1),
						(h || r.initialSlide || 0) === (d || 0) && i && a.emit('beforeSlideChangeStart');
					var u,
						m = - o[e];
					if (a.updateProgress(m), r.normalizeSlideIndex) for (var f = 0; f < l.length; f += 1) - Math.floor(100 * m) >= Math.floor(100 * l[f]) && (n = f);
					if (a.initialized && n !== h) {
						if (!a.allowSlideNext && m < a.translate && m < a.minTranslate()) return !1;
						if (!a.allowSlidePrev && m > a.translate && m > a.maxTranslate() && (h || 0) !== n) return !1
					}
					if (u = h < n ? 'next' : n < h ? 'prev' : 'reset', c && - m === a.translate || !c && m === a.translate) return a.updateActiveIndex(n),
						r.autoHeight && a.updateAutoHeight(),
						a.updateSlidesClasses(),
						'slide' !== r.effect && a.setTranslate(m),
						'reset' != u && (a.transitionStart(i, u), a.transitionEnd(i, u)),
						!1;
					if (r.cssMode) {
						h = a.isHorizontal(),
							r = - m;
						return c && (r = p.scrollWidth - p.offsetWidth - r),
							0 !== t && p.scrollTo ? p.scrollTo(((c = {
							})[h ? 'left' : 'top'] = r, c.behavior = 'smooth', c)) : p[h ? 'scrollLeft' : 'scrollTop'] = r,
							!0
					}
					return 0 === t ? (a.setTransition(0), a.setTranslate(m), a.updateActiveIndex(n), a.updateSlidesClasses(), a.emit('beforeTransitionStart', t, s), a.transitionStart(i, u), a.transitionEnd(i, u)) : (a.setTransition(t), a.setTranslate(m), a.updateActiveIndex(n), a.updateSlidesClasses(), a.emit('beforeTransitionStart', t, s), a.transitionStart(i, u), a.animating || (a.animating = !0, a.onSlideToWrapperTransitionEnd || (a.onSlideToWrapperTransitionEnd = function (e) {
						a && !a.destroyed && e.target === this && (a.$wrapperEl[0].removeEventListener('transitionend', a.onSlideToWrapperTransitionEnd), a.$wrapperEl[0].removeEventListener('webkitTransitionEnd', a.onSlideToWrapperTransitionEnd), a.onSlideToWrapperTransitionEnd = null, delete a.onSlideToWrapperTransitionEnd, a.transitionEnd(i, u))
					}), a.$wrapperEl[0].addEventListener('transitionend', a.onSlideToWrapperTransitionEnd), a.$wrapperEl[0].addEventListener('webkitTransitionEnd', a.onSlideToWrapperTransitionEnd))),
						!0
				},
				slideToLoop: function (e, t, i, s) {
					void 0 === t && (t = this.params.speed);
					e = void 0 === e ? 0 : e;
					return this.params.loop && (e += this.loopedSlides),
						this.slideTo(e, t, i = void 0 === i ? !0 : i, s)
				},
				slideNext: function (e, t, i) {
					void 0 === e && (e = this.params.speed),
						void 0 === t && (t = !0);
					var s = this.params,
						a = this.animating,
						n = this.activeIndex < s.slidesPerGroupSkip ? 1 : s.slidesPerGroup;
					if (s.loop) {
						if (a) return !1;
						this.loopFix(),
							this._clientLeft = this.$wrapperEl[0].clientLeft
					}
					return this.slideTo(this.activeIndex + n, e, t, i)
				},
				slidePrev: function (e, t, i) {
					void 0 === e && (e = this.params.speed),
						void 0 === t && (t = !0);
					var s = this.params,
						a = this.animating,
						n = this.snapGrid,
						r = this.slidesGrid,
						o = this.rtlTranslate;
					if (s.loop) {
						if (a) return !1;
						this.loopFix(),
							this._clientLeft = this.$wrapperEl[0].clientLeft
					}
					function l(e) {
						return e < 0 ? - Math.floor(Math.abs(e)) : Math.floor(e)
					}
					var d,
						h = l(o ? this.translate : - this.translate),
						o = n.map(l),
						c = (r.map(l), n[o.indexOf(h)], n[o.indexOf(h) - 1]);
					return void 0 === c && s.cssMode && n.forEach(function (e) {
						!c && e <= h && (c = e)
					}),
						void 0 !== c && (d = r.indexOf(c)) < 0 && (d = this.activeIndex - 1),
						this.slideTo(d, e, t, i)
				},
				slideReset: function (e, t, i) {
					return void 0 === e && (e = this.params.speed),
						this.slideTo(this.activeIndex, e, t = void 0 === t ? !0 : t, i)
				},
				slideToClosest: function (e, t, i, s) {
					void 0 === e && (e = this.params.speed),
						void 0 === t && (t = !0),
						void 0 === s && (s = 0.5);
					var a = this.activeIndex,
						n = Math.min(this.params.slidesPerGroupSkip, a),
						r = n + Math.floor((a - n) / this.params.slidesPerGroup),
						o = this.rtlTranslate ? this.translate : - this.translate;
					return o >= this.snapGrid[r] ? o - (n = this.snapGrid[r]) > (this.snapGrid[r + 1] - n) * s && (a += this.params.slidesPerGroup) : o - (o = this.snapGrid[r - 1]) <= (this.snapGrid[r] - o) * s && (a -= this.params.slidesPerGroup),
						a = Math.max(a, 0),
						a = Math.min(a, this.slidesGrid.length - 1),
						this.slideTo(a, e, t, i)
				},
				slideToClickedSlide: function () {
					var e,
						t = this,
						i = t.params,
						s = t.$wrapperEl,
						a = 'auto' === i.slidesPerView ? t.slidesPerViewDynamic() : i.slidesPerView,
						n = t.clickedIndex;
					i.loop ? t.animating || (e = parseInt(E(t.clickedSlide).attr('data-swiper-slide-index'), 10), i.centeredSlides ? n < t.loopedSlides - a / 2 || n > t.slides.length - t.loopedSlides + a / 2 ? (t.loopFix(), n = s.children('.' + i.slideClass + '[data-swiper-slide-index="' + e + '"]:not(.' + i.slideDuplicateClass + ')').eq(0).index(), _.nextTick(function () {
						t.slideTo(n)
					})) : t.slideTo(n) : n > t.slides.length - a ? (t.loopFix(), n = s.children('.' + i.slideClass + '[data-swiper-slide-index="' + e + '"]:not(.' + i.slideDuplicateClass + ')').eq(0).index(), _.nextTick(function () {
						t.slideTo(n)
					})) : t.slideTo(n)) : t.slideTo(n)
				}
			},
			M = {
				loopCreate: function () {
					var s = this,
						e = s.params,
						t = s.$wrapperEl;
					t.children('.' + e.slideClass + '.' + e.slideDuplicateClass).remove();
					var a = t.children('.' + e.slideClass);
					if (e.loopFillGroupWithBlank) {
						var i = e.slidesPerGroup - a.length % e.slidesPerGroup;
						if (i !== e.slidesPerGroup) {
							for (var n = 0; n < i; n += 1) {
								var r = E(c.createElement('div')).addClass(e.slideClass + ' ' + e.slideBlankClass);
								t.append(r)
							}
							a = t.children('.' + e.slideClass)
						}
					}
					'auto' !== e.slidesPerView || e.loopedSlides || (e.loopedSlides = a.length),
						s.loopedSlides = Math.ceil(parseFloat(e.loopedSlides || e.slidesPerView, 10)),
						s.loopedSlides += e.loopAdditionalSlides,
						s.loopedSlides > a.length && (s.loopedSlides = a.length);
					var o = [
					],
						l = [
						];
					a.each(function (e, t) {
						var i = E(t);
						e < s.loopedSlides && l.push(t),
							e < a.length && e >= a.length - s.loopedSlides && o.push(t),
							i.attr('data-swiper-slide-index', e)
					});
					for (var d = 0; d < l.length; d += 1) t.append(E(l[d].cloneNode(!0)).addClass(e.slideDuplicateClass));
					for (var h = o.length - 1; 0 <= h; --h) t.prepend(E(o[h].cloneNode(!0)).addClass(e.slideDuplicateClass))
				},
				loopFix: function () {
					this.emit('beforeLoopFix');
					var e,
						t = this.activeIndex,
						i = this.slides,
						s = this.loopedSlides,
						a = this.allowSlidePrev,
						n = this.allowSlideNext,
						r = this.snapGrid,
						o = this.rtlTranslate;
					this.allowSlidePrev = !0,
						this.allowSlideNext = !0;
					r = - r[t] - this.getTranslate();
					t < s ? (e = i.length - 3 * s + t, this.slideTo(e += s, 0, !1, !0) && 0 != r && this.setTranslate((o ? - this.translate : this.translate) - r)) : t >= i.length - s && (e = - i.length + t + s, this.slideTo(e += s, 0, !1, !0) && 0 != r && this.setTranslate((o ? - this.translate : this.translate) - r)),
						this.allowSlidePrev = a,
						this.allowSlideNext = n,
						this.emit('loopFix')
				},
				loopDestroy: function () {
					var e = this.$wrapperEl,
						t = this.params,
						i = this.slides;
					e.children('.' + t.slideClass + '.' + t.slideDuplicateClass + ',.' + t.slideClass + '.' + t.slideBlankClass).remove(),
						i.removeAttr('data-swiper-slide-index')
				}
			},
			z = {
				setGrabCursor: function (e) {
					var t;
					y.touch || !this.params.simulateTouch || this.params.watchOverflow && this.isLocked || this.params.cssMode || ((t = this.el).style.cursor = 'move', t.style.cursor = e ? '-webkit-grabbing' : '-webkit-grab', t.style.cursor = e ? '-moz-grabbin' : '-moz-grab', t.style.cursor = e ? 'grabbing' : 'grab')
				},
				unsetGrabCursor: function () {
					y.touch || this.params.watchOverflow && this.isLocked || this.params.cssMode || (this.el.style.cursor = '')
				}
			},
			$ = {
				appendSlide: function (e) {
					var t = this.$wrapperEl,
						i = this.params;
					if (i.loop && this.loopDestroy(), 'object' == typeof e && 'length' in e) for (var s = 0; s < e.length; s += 1) e[s] && t.append(e[s]);
					else t.append(e);
					i.loop && this.loopCreate(),
						i.observer && y.observer || this.update()
				},
				prependSlide: function (e) {
					var t = this.params,
						i = this.$wrapperEl,
						s = this.activeIndex;
					t.loop && this.loopDestroy();
					var a = s + 1;
					if ('object' == typeof e && 'length' in e) {
						for (var n = 0; n < e.length; n += 1) e[n] && i.prepend(e[n]);
						a = s + e.length
					} else i.prepend(e);
					t.loop && this.loopCreate(),
						t.observer && y.observer || this.update(),
						this.slideTo(a, 0, !1)
				},
				addSlide: function (e, t) {
					var i = this.$wrapperEl,
						s = this.params,
						a = this.activeIndex;
					s.loop && (a -= this.loopedSlides, this.loopDestroy(), this.slides = i.children('.' + s.slideClass));
					var n = this.slides.length;
					if (e <= 0) this.prependSlide(t);
					else if (n <= e) this.appendSlide(t);
					else {
						for (var r = e < a ? a + 1 : a, o = [
						], l = n - 1; e <= l; --l) {
							var d = this.slides.eq(l);
							d.remove(),
								o.unshift(d)
						}
						if ('object' == typeof t && 'length' in t) {
							for (var h = 0; h < t.length; h += 1) t[h] && i.append(t[h]);
							r = e < a ? a + t.length : a
						} else i.append(t);
						for (var c = 0; c < o.length; c += 1) i.append(o[c]);
						s.loop && this.loopCreate(),
							s.observer && y.observer || this.update(),
							s.loop ? this.slideTo(r + this.loopedSlides, 0, !1) : this.slideTo(r, 0, !1)
					}
				},
				removeSlide: function (e) {
					var t = this.params,
						i = this.$wrapperEl,
						s = this.activeIndex;
					t.loop && (s -= this.loopedSlides, this.loopDestroy(), this.slides = i.children('.' + t.slideClass));
					var a,
						n = s;
					if ('object' == typeof e && 'length' in e) {
						for (var r = 0; r < e.length; r += 1) a = e[r],
							this.slides[a] && this.slides.eq(a).remove(),
							a < n && --n;
						n = Math.max(n, 0)
					} else this.slides[a = e] && this.slides.eq(a).remove(),
						a < n && --n,
						n = Math.max(n, 0);
					t.loop && this.loopCreate(),
						t.observer && y.observer || this.update(),
						t.loop ? this.slideTo(n + this.loopedSlides, 0, !1) : this.slideTo(n, 0, !1)
				},
				removeAllSlides: function () {
					for (var e = [
					], t = 0; t < this.slides.length; t += 1) e.push(t);
					this.removeSlide(e)
				}
			},
			k = (x = j.navigator.platform, o = j.navigator.userAgent, d = {
				ios: !1,
				android: !1,
				androidChrome: !1,
				desktop: !1,
				iphone: !1,
				ipod: !1,
				ipad: !1,
				edge: !1,
				ie: !1,
				firefox: !1,
				macos: !1,
				windows: !1,
				cordova: !(!j.cordova && !j.phonegap),
				phonegap: !(!j.cordova && !j.phonegap),
				electron: !1
			}, h = j.screen.width, p = j.screen.height, u = o.match(/(Android);?[\s\/]+([\d.]+)?/), m = o.match(/(iPad).*OS\s([\d_]+)/), f = o.match(/(iPod)(.*OS\s([\d_]+))?/), v = !m && o.match(/(iPhone\sOS|iOS)\s([\d_]+)/), g = 0 <= o.indexOf('MSIE ') || 0 <= o.indexOf('Trident/'), b = 0 <= o.indexOf('Edge/'), w = 0 <= o.indexOf('Gecko/') && 0 <= o.indexOf('Firefox/'), e = 'Win32' === x, r = 0 <= o.toLowerCase().indexOf('electron'), x = 'MacIntel' === x, !m && x && y.touch && (1024 === h && 1366 === p || 834 === h && 1194 === p || 834 === h && 1112 === p || 768 === h && 1024 === p) && (m = o.match(/(Version)\/([\d.]+)/), x = !1), d.ie = g, d.edge = b, d.firefox = w, u && !e && (d.os = 'android', d.osVersion = u[2], d.android = !0, d.androidChrome = 0 <= o.toLowerCase().indexOf('chrome')), (m || v || f) && (d.os = 'ios', d.ios = !0), v && !f && (d.osVersion = v[2].replace(/_/g, '.'), d.iphone = !0), m && (d.osVersion = m[2].replace(/_/g, '.'), d.ipad = !0), f && (d.osVersion = f[3] ? f[3].replace(/_/g, '.') : null, d.ipod = !0), d.ios && d.osVersion && 0 <= o.indexOf('Version/') && '10' === d.osVersion.split('.')[0] && (d.osVersion = o.toLowerCase().split('version/')[1].split(' ')[0]), d.webView = !(!(v || m || f) || !o.match(/.*AppleWebKit(?!.*Safari)/i) && !j.navigator.standalone) || j.matchMedia && j.matchMedia('(display-mode: standalone)').matches, d.webview = d.webView, d.standalone = d.webView, d.desktop = !(d.ios || d.android) || r, d.desktop && (d.electron = r, d.macos = x, d.windows = e, d.macos && (d.os = 'macos'), d.windows && (d.os = 'windows')), d.pixelRatio = j.devicePixelRatio || 1, d);
		function P() {
			var e,
				t,
				i = this.params,
				s = this.el;
			s && 0 === s.offsetWidth || (i.breakpoints && this.setBreakpoint(), e = this.allowSlideNext, t = this.allowSlidePrev, s = this.snapGrid, this.allowSlideNext = !0, this.allowSlidePrev = !0, this.updateSize(), this.updateSlides(), this.updateSlidesClasses(), ('auto' === i.slidesPerView || 1 < i.slidesPerView) && this.isEnd && !this.params.centeredSlides ? this.slideTo(this.slides.length - 1, 0, !1, !0) : this.slideTo(this.activeIndex, 0, !1, !0), this.autoplay && this.autoplay.running && this.autoplay.paused && this.autoplay.run(), this.allowSlidePrev = t, this.allowSlideNext = e, this.params.watchOverflow && s !== this.snapGrid && this.checkOverflow())
		}
		var L = !1;
		function I() {
		}
		var O = {
			init: !0,
			direction: 'horizontal',
			touchEventsTarget: 'container',
			initialSlide: 0,
			speed: 300,
			cssMode: !1,
			updateOnWindowResize: !0,
			preventInteractionOnTransition: !1,
			edgeSwipeDetection: !1,
			edgeSwipeThreshold: 20,
			freeMode: !1,
			freeModeMomentum: !0,
			freeModeMomentumRatio: 1,
			freeModeMomentumBounce: !0,
			freeModeMomentumBounceRatio: 1,
			freeModeMomentumVelocityRatio: 1,
			freeModeSticky: !1,
			freeModeMinimumVelocity: 0.02,
			autoHeight: !1,
			setWrapperSize: !1,
			virtualTranslate: !1,
			effect: 'slide',
			breakpoints: void 0,
			spaceBetween: 0,
			slidesPerView: 1,
			slidesPerColumn: 1,
			slidesPerColumnFill: 'column',
			slidesPerGroup: 1,
			slidesPerGroupSkip: 0,
			centeredSlides: !1,
			centeredSlidesBounds: !1,
			slidesOffsetBefore: 0,
			slidesOffsetAfter: 0,
			normalizeSlideIndex: !0,
			centerInsufficientSlides: !1,
			watchOverflow: !1,
			roundLengths: !1,
			touchRatio: 1,
			touchAngle: 45,
			simulateTouch: !0,
			shortSwipes: !0,
			longSwipes: !0,
			longSwipesRatio: 0.5,
			longSwipesMs: 300,
			followFinger: !0,
			allowTouchMove: !0,
			threshold: 0,
			touchMoveStopPropagation: !1,
			touchStartPreventDefault: !0,
			touchStartForcePreventDefault: !1,
			touchReleaseOnEdges: !1,
			uniqueNavElements: !0,
			resistance: !0,
			resistanceRatio: 0.85,
			watchSlidesProgress: !1,
			watchSlidesVisibility: !1,
			grabCursor: !1,
			preventClicks: !0,
			preventClicksPropagation: !0,
			slideToClickedSlide: !1,
			preloadImages: !0,
			updateOnImagesReady: !0,
			loop: !1,
			loopAdditionalSlides: 0,
			loopedSlides: null,
			loopFillGroupWithBlank: !1,
			allowSlidePrev: !0,
			allowSlideNext: !0,
			swipeHandler: null,
			noSwiping: !0,
			noSwipingClass: 'swiper-no-swiping',
			noSwipingSelector: null,
			passiveListeners: !0,
			containerModifierClass: 'swiper-container-',
			slideClass: 'swiper-slide',
			slideBlankClass: 'swiper-slide-invisible-blank',
			slideActiveClass: 'swiper-slide-active',
			slideDuplicateActiveClass: 'swiper-slide-duplicate-active',
			slideVisibleClass: 'swiper-slide-visible',
			slideDuplicateClass: 'swiper-slide-duplicate',
			slideNextClass: 'swiper-slide-next',
			slideDuplicateNextClass: 'swiper-slide-duplicate-next',
			slidePrevClass: 'swiper-slide-prev',
			slideDuplicatePrevClass: 'swiper-slide-duplicate-prev',
			wrapperClass: 'swiper-wrapper',
			runCallbacksOnInit: !0
		},
			D = {
				update: T,
				translate: C,
				transition: {
					setTransition: function (e, t) {
						this.params.cssMode || this.$wrapperEl.transition(e),
							this.emit('setTransition', e, t)
					},
					transitionStart: function (e, t) {
						void 0 === e && (e = !0);
						var i = this.activeIndex,
							s = this.params,
							a = this.previousIndex;
						s.cssMode || (s.autoHeight && this.updateAutoHeight(), t = (t = t) || (a < i ? 'next' : i < a ? 'prev' : 'reset'), this.emit('transitionStart'), e && i !== a && ('reset' !== t ? (this.emit('slideChangeTransitionStart'), 'next' === t ? this.emit('slideNextTransitionStart') : this.emit('slidePrevTransitionStart')) : this.emit('slideResetTransitionStart')))
					},
					transitionEnd: function (e, t) {
						void 0 === e && (e = !0);
						var i = this.activeIndex,
							s = this.previousIndex,
							a = this.params;
						this.animating = !1,
							a.cssMode || (this.setTransition(0), t = (t = t) || (s < i ? 'next' : i < s ? 'prev' : 'reset'), this.emit('transitionEnd'), e && i !== s && ('reset' !== t ? (this.emit('slideChangeTransitionEnd'), 'next' === t ? this.emit('slideNextTransitionEnd') : this.emit('slidePrevTransitionEnd')) : this.emit('slideResetTransitionEnd')))
					}
				},
				slide: S,
				loop: M,
				grabCursor: z,
				manipulation: $,
				events: {
					attachEvents: function () {
						var e = this.params,
							t = this.touchEvents,
							i = this.el,
							s = this.wrapperEl;
						this.onTouchStart = function (e) {
							var t,
								i,
								s,
								a,
								n,
								r = this.touchEventsData,
								o = this.params,
								l = this.touches;
							this.animating && o.preventInteractionOnTransition || (i = E((t = (t = e).originalEvent ? t.originalEvent : t).target), 'wrapper' === o.touchEventsTarget && !i.closest(this.wrapperEl).length || (r.isTouchEvent = 'touchstart' === t.type, !r.isTouchEvent && 'which' in t && 3 === t.which || !r.isTouchEvent && 'button' in t && 0 < t.button || r.isTouched && r.isMoved) || (o.noSwiping && i.closest(o.noSwipingSelector || '.' + o.noSwipingClass)[0] ? this.allowClick = !0 : o.swipeHandler && !i.closest(o.swipeHandler)[0] || (l.currentX = ('touchstart' === t.type ? t.targetTouches[0] : t).pageX, l.currentY = ('touchstart' === t.type ? t.targetTouches[0] : t).pageY, s = l.currentX, n = l.currentY, a = o.edgeSwipeDetection || o.iOSEdgeSwipeDetection, e = o.edgeSwipeThreshold || o.iOSEdgeSwipeThreshold, a && (s <= e || s >= j.screen.width - e) || (_.extend(r, {
								isTouched: !0,
								isMoved: !1,
								allowTouchCallbacks: !0,
								isScrolling: void 0,
								startMoving: void 0
							}), l.startX = s, l.startY = n, r.touchStartTime = _.now(), this.allowClick = !0, this.updateSize(), this.swipeDirection = void 0, 0 < o.threshold && (r.allowThresholdMove = !1), 'touchstart' !== t.type && (n = !0, i.is(r.formElements) && (n = !1), c.activeElement && E(c.activeElement).is(r.formElements) && c.activeElement !== i[0] && c.activeElement.blur(), n = n && this.allowTouchMove && o.touchStartPreventDefault, (o.touchStartForcePreventDefault || n) && t.preventDefault()), this.emit('touchStart', t)))))
						}.bind(this),
							this.onTouchMove = function (e) {
								var t = this.touchEventsData,
									i = this.params,
									s = this.touches,
									a = this.rtlTranslate,
									n = e;
								if (n.originalEvent && (n = n.originalEvent), t.isTouched) {
									if (!t.isTouchEvent || 'touchmove' === n.type) {
										var r = 'touchmove' === n.type && n.targetTouches && (n.targetTouches[0] || n.changedTouches[0]),
											o = ('touchmove' === n.type ? r : n).pageX,
											e = ('touchmove' === n.type ? r : n).pageY;
										if (n.preventedByNestedSwiper) return s.startX = o,
											void (s.startY = e);
										if (!this.allowTouchMove) return this.allowClick = !1,
											void (t.isTouched && (_.extend(s, {
												startX: o,
												startY: e,
												currentX: o,
												currentY: e
											}), t.touchStartTime = _.now()));
										if (t.isTouchEvent && i.touchReleaseOnEdges && !i.loop) if (this.isVertical()) {
											if (e < s.startY && this.translate <= this.maxTranslate() || e > s.startY && this.translate >= this.minTranslate()) return t.isTouched = !1,
												void (t.isMoved = !1)
										} else if (o < s.startX && this.translate <= this.maxTranslate() || o > s.startX && this.translate >= this.minTranslate()) return;
										if (t.isTouchEvent && c.activeElement && n.target === c.activeElement && E(n.target).is(t.formElements)) return t.isMoved = !0,
											void (this.allowClick = !1);
										if (t.allowTouchCallbacks && this.emit('touchMove', n), !(n.targetTouches && 1 < n.targetTouches.length)) {
											s.currentX = o,
												s.currentY = e;
											r = s.currentX - s.startX,
												o = s.currentY - s.startY;
											if (!(this.params.threshold && Math.sqrt(Math.pow(r, 2) + Math.pow(o, 2)) < this.params.threshold)) if (void 0 === t.isScrolling && (this.isHorizontal() && s.currentY === s.startY || this.isVertical() && s.currentX === s.startX ? t.isScrolling = !1 : 25 <= r * r + o * o && (e = 180 * Math.atan2(Math.abs(o), Math.abs(r)) / Math.PI, t.isScrolling = this.isHorizontal() ? e > i.touchAngle : 90 - e > i.touchAngle)), t.isScrolling && this.emit('touchMoveOpposite', n), void 0 === t.startMoving && (s.currentX === s.startX && s.currentY === s.startY || (t.startMoving = !0)), t.isScrolling) t.isTouched = !1;
											else if (t.startMoving) {
												this.allowClick = !1,
													!i.cssMode && n.cancelable && n.preventDefault(),
													i.touchMoveStopPropagation && !i.nested && n.stopPropagation(),
													t.isMoved || (i.loop && this.loopFix(), t.startTranslate = this.getTranslate(), this.setTransition(0), this.animating && this.$wrapperEl.trigger('webkitTransitionEnd transitionend'), t.allowMomentumBounce = !1, !i.grabCursor || !0 !== this.allowSlideNext && !0 !== this.allowSlidePrev || this.setGrabCursor(!0), this.emit('sliderFirstMove', n)),
													this.emit('sliderMove', n),
													t.isMoved = !0;
												r = this.isHorizontal() ? r : o;
												s.diff = r,
													r *= i.touchRatio,
													this.swipeDirection = 0 < (r = a ? - r : r) ? 'prev' : 'next',
													t.currentTranslate = r + t.startTranslate;
												o = !0,
													a = i.resistanceRatio;
												if (i.touchReleaseOnEdges && (a = 0), 0 < r && t.currentTranslate > this.minTranslate() ? (o = !1, i.resistance && (t.currentTranslate = this.minTranslate() - 1 + Math.pow(- this.minTranslate() + t.startTranslate + r, a))) : r < 0 && t.currentTranslate < this.maxTranslate() && (o = !1, i.resistance && (t.currentTranslate = this.maxTranslate() + 1 - Math.pow(this.maxTranslate() - t.startTranslate - r, a))), o && (n.preventedByNestedSwiper = !0), !this.allowSlideNext && 'next' === this.swipeDirection && t.currentTranslate < t.startTranslate && (t.currentTranslate = t.startTranslate), !this.allowSlidePrev && 'prev' === this.swipeDirection && t.currentTranslate > t.startTranslate && (t.currentTranslate = t.startTranslate), 0 < i.threshold) {
													if (!(Math.abs(r) > i.threshold || t.allowThresholdMove)) return void (t.currentTranslate = t.startTranslate);
													if (!t.allowThresholdMove) return t.allowThresholdMove = !0,
														s.startX = s.currentX,
														s.startY = s.currentY,
														t.currentTranslate = t.startTranslate,
														void (s.diff = this.isHorizontal() ? s.currentX - s.startX : s.currentY - s.startY)
												}
												i.followFinger && !i.cssMode && ((i.freeMode || i.watchSlidesProgress || i.watchSlidesVisibility) && (this.updateActiveIndex(), this.updateSlidesClasses()), i.freeMode && (0 === t.velocities.length && t.velocities.push({
													position: s[this.isHorizontal() ? 'startX' : 'startY'],
													time: t.touchStartTime
												}), t.velocities.push({
													position: s[this.isHorizontal() ? 'currentX' : 'currentY'],
													time: _.now()
												})), this.updateProgress(t.currentTranslate), this.setTranslate(t.currentTranslate))
											}
										}
									}
								} else t.startMoving && t.isScrolling && this.emit('touchMoveOpposite', n)
							}.bind(this),
							this.onTouchEnd = function (e) {
								var t = this,
									i = t.touchEventsData,
									s = t.params,
									a = t.touches,
									n = t.rtlTranslate,
									r = t.$wrapperEl,
									o = t.slidesGrid,
									l = t.snapGrid,
									d = e;
								if (d.originalEvent && (d = d.originalEvent), i.allowTouchCallbacks && t.emit('touchEnd', d), i.allowTouchCallbacks = !1, !i.isTouched) return i.isMoved && s.grabCursor && t.setGrabCursor(!1),
									i.isMoved = !1,
									void (i.startMoving = !1);
								s.grabCursor && i.isMoved && i.isTouched && (!0 === t.allowSlideNext || !0 === t.allowSlidePrev) && t.setGrabCursor(!1);
								var h,
									c = _.now(),
									e = c - i.touchStartTime;
								if (t.allowClick && (t.updateClickedSlide(d), t.emit('tap click', d), e < 300 && c - i.lastClickTime < 300 && t.emit('doubleTap doubleClick', d)), i.lastClickTime = _.now(), _.nextTick(function () {
									t.destroyed || (t.allowClick = !0)
								}), !i.isTouched || !i.isMoved || !t.swipeDirection || 0 === a.diff || i.currentTranslate === i.startTranslate) return i.isTouched = !1,
									i.isMoved = !1,
									void (i.startMoving = !1);
								if (i.isTouched = !1, i.isMoved = !1, i.startMoving = !1, h = s.followFinger ? n ? t.translate : - t.translate : - i.currentTranslate, !s.cssMode) if (s.freeMode) if (h < - t.minTranslate()) t.slideTo(t.activeIndex);
								else if (h > - t.maxTranslate()) t.slides.length < l.length ? t.slideTo(l.length - 1) : t.slideTo(t.slides.length - 1);
								else {
									if (s.freeModeMomentum) {
										1 < i.velocities.length ? (g = i.velocities.pop(), u = i.velocities.pop(), p = g.position - u.position, u = g.time - u.time, t.velocity = p / u, t.velocity /= 2, Math.abs(t.velocity) < s.freeModeMinimumVelocity && (t.velocity = 0), (150 < u || 300 < _.now() - g.time) && (t.velocity = 0)) : t.velocity = 0,
											t.velocity *= s.freeModeMomentumVelocityRatio,
											i.velocities.length = 0;
										var p = 1000 * s.freeModeMomentumRatio,
											u = t.velocity * p,
											m = t.translate + u;
										n && (m = - m);
										var f,
											v,
											g = !1,
											u = 20 * Math.abs(t.velocity) * s.freeModeMomentumBounceRatio;
										if (m < t.maxTranslate()) s.freeModeMomentumBounce ? (m + t.maxTranslate() < - u && (m = t.maxTranslate() - u), f = t.maxTranslate(), i.allowMomentumBounce = g = !0) : m = t.maxTranslate(),
											s.loop && s.centeredSlides && (v = !0);
										else if (m > t.minTranslate()) s.freeModeMomentumBounce ? (m - t.minTranslate() > u && (m = t.minTranslate() + u), f = t.minTranslate(), i.allowMomentumBounce = g = !0) : m = t.minTranslate(),
											s.loop && s.centeredSlides && (v = !0);
										else if (s.freeModeSticky) {
											for (var b, w = 0; w < l.length; w += 1) if (l[w] > - m) {
												b = w;
												break
											}
											m = - (Math.abs(l[b] - m) < Math.abs(l[b - 1] - m) || 'next' === t.swipeDirection ? l[b] : l[b - 1])
										}
										if (v && t.once('transitionEnd', function () {
											t.loopFix()
										}), 0 !== t.velocity) p = n ? Math.abs((- m - t.translate) / t.velocity) : Math.abs((m - t.translate) / t.velocity),
											s.freeModeSticky && (p = (v = Math.abs((n ? - m : m) - t.translate)) < (n = t.slidesSizesGrid[t.activeIndex]) ? s.speed : v < 2 * n ? 1.5 * s.speed : 2.5 * s.speed);
										else if (s.freeModeSticky) return void t.slideToClosest();
										s.freeModeMomentumBounce && g ? (t.updateProgress(f), t.setTransition(p), t.setTranslate(m), t.transitionStart(!0, t.swipeDirection), t.animating = !0, r.transitionEnd(function () {
											t && !t.destroyed && i.allowMomentumBounce && (t.emit('momentumBounce'), t.setTransition(s.speed), setTimeout(function () {
												t.setTranslate(f),
													r.transitionEnd(function () {
														t && !t.destroyed && t.transitionEnd()
													})
											}, 0))
										})) : t.velocity ? (t.updateProgress(m), t.setTransition(p), t.setTranslate(m), t.transitionStart(!0, t.swipeDirection), t.animating || (t.animating = !0, r.transitionEnd(function () {
											t && !t.destroyed && t.transitionEnd()
										}))) : t.updateProgress(m),
											t.updateActiveIndex(),
											t.updateSlidesClasses()
									} else if (s.freeModeSticky) return void t.slideToClosest();
									(!s.freeModeMomentum || e >= s.longSwipesMs) && (t.updateProgress(), t.updateActiveIndex(), t.updateSlidesClasses())
								} else {
									for (var y = 0, x = t.slidesSizesGrid[0], E = 0; E < o.length; E += E < s.slidesPerGroupSkip ? 1 : s.slidesPerGroup) {
										var T = E < s.slidesPerGroupSkip - 1 ? 1 : s.slidesPerGroup;
										void 0 !== o[E + T] ? h >= o[E] && h < o[E + T] && (x = o[(y = E) + T] - o[E]) : h >= o[E] && (y = E, x = o[o.length - 1] - o[o.length - 2])
									}
									g = (h - o[y]) / x,
										p = y < s.slidesPerGroupSkip - 1 ? 1 : s.slidesPerGroup;
									e > s.longSwipesMs ? s.longSwipes ? ('next' === t.swipeDirection && (g >= s.longSwipesRatio ? t.slideTo(y + p) : t.slideTo(y)), 'prev' === t.swipeDirection && (g > 1 - s.longSwipesRatio ? t.slideTo(y + p) : t.slideTo(y))) : t.slideTo(t.activeIndex) : s.shortSwipes ? !t.navigation || d.target !== t.navigation.nextEl && d.target !== t.navigation.prevEl ? ('next' === t.swipeDirection && t.slideTo(y + p), 'prev' === t.swipeDirection && t.slideTo(y)) : d.target === t.navigation.nextEl ? t.slideTo(y + p) : t.slideTo(y) : t.slideTo(t.activeIndex)
								}
							}.bind(this),
							e.cssMode && (this.onScroll = function () {
								var e = this.wrapperEl,
									t = this.rtlTranslate;
								this.previousTranslate = this.translate,
									this.isHorizontal() ? this.translate = t ? e.scrollWidth - e.offsetWidth - e.scrollLeft : - e.scrollLeft : this.translate = - e.scrollTop,
									- 0 === this.translate && (this.translate = 0),
									this.updateActiveIndex(),
									this.updateSlidesClasses(),
									(0 == (e = this.maxTranslate() - this.minTranslate()) ? 0 : (this.translate - this.minTranslate()) / e) !== this.progress && this.updateProgress(t ? - this.translate : this.translate),
									this.emit('setTranslate', this.translate, !1)
							}.bind(this)),
							this.onClick = function (e) {
								this.allowClick || (this.params.preventClicks && e.preventDefault(), this.params.preventClicksPropagation && this.animating && (e.stopPropagation(), e.stopImmediatePropagation()))
							}.bind(this);
						var a,
							n = !!e.nested;
						!y.touch && y.pointerEvents ? (i.addEventListener(t.start, this.onTouchStart, !1), c.addEventListener(t.move, this.onTouchMove, n), c.addEventListener(t.end, this.onTouchEnd, !1)) : (y.touch && (a = !('touchstart' !== t.start || !y.passiveListener || !e.passiveListeners) && {
							passive: !0,
							capture: !1
						}, i.addEventListener(t.start, this.onTouchStart, a), i.addEventListener(t.move, this.onTouchMove, y.passiveListener ? {
							passive: !1,
							capture: n
						}
							: n), i.addEventListener(t.end, this.onTouchEnd, a), t.cancel && i.addEventListener(t.cancel, this.onTouchEnd, a), L || (c.addEventListener('touchstart', I), L = !0)), (e.simulateTouch && !k.ios && !k.android || e.simulateTouch && !y.touch && k.ios) && (i.addEventListener('mousedown', this.onTouchStart, !1), c.addEventListener('mousemove', this.onTouchMove, n), c.addEventListener('mouseup', this.onTouchEnd, !1))),
							(e.preventClicks || e.preventClicksPropagation) && i.addEventListener('click', this.onClick, !0),
							e.cssMode && s.addEventListener('scroll', this.onScroll),
							e.updateOnWindowResize ? this.on(k.ios || k.android ? 'resize orientationchange observerUpdate' : 'resize observerUpdate', P, !0) : this.on('observerUpdate', P, !0)
					},
					detachEvents: function () {
						var e,
							t = this.params,
							i = this.touchEvents,
							s = this.el,
							a = this.wrapperEl,
							n = !!t.nested;
						!y.touch && y.pointerEvents ? (s.removeEventListener(i.start, this.onTouchStart, !1), c.removeEventListener(i.move, this.onTouchMove, n), c.removeEventListener(i.end, this.onTouchEnd, !1)) : (y.touch && (e = !('onTouchStart' !== i.start || !y.passiveListener || !t.passiveListeners) && {
							passive: !0,
							capture: !1
						}, s.removeEventListener(i.start, this.onTouchStart, e), s.removeEventListener(i.move, this.onTouchMove, n), s.removeEventListener(i.end, this.onTouchEnd, e), i.cancel && s.removeEventListener(i.cancel, this.onTouchEnd, e)), (t.simulateTouch && !k.ios && !k.android || t.simulateTouch && !y.touch && k.ios) && (s.removeEventListener('mousedown', this.onTouchStart, !1), c.removeEventListener('mousemove', this.onTouchMove, n), c.removeEventListener('mouseup', this.onTouchEnd, !1))),
							(t.preventClicks || t.preventClicksPropagation) && s.removeEventListener('click', this.onClick, !0),
							t.cssMode && a.removeEventListener('scroll', this.onScroll),
							this.off(k.ios || k.android ? 'resize orientationchange observerUpdate' : 'resize observerUpdate', P)
					}
				},
				breakpoints: {
					setBreakpoint: function () {
						var e = this.activeIndex,
							t = this.initialized,
							i = this.loopedSlides;
						void 0 === i && (i = 0);
						var s,
							a,
							n,
							r,
							o = this.params,
							l = this.$el,
							d = o.breakpoints;
						!d || d && 0 === Object.keys(d).length || (s = this.getBreakpoint(d)) && this.currentBreakpoint !== s && ((a = s in d ? d[s] : void 0) && [
							'slidesPerView',
							'spaceBetween',
							'slidesPerGroup',
							'slidesPerGroupSkip',
							'slidesPerColumn'
						].forEach(function (e) {
							var t = a[e];
							void 0 !== t && (a[e] = 'slidesPerView' !== e || 'AUTO' !== t && 'auto' !== t ? 'slidesPerView' === e ? parseFloat(t) : parseInt(t, 10) : 'auto')
						}), n = a || this.originalParams, r = 1 < o.slidesPerColumn, d = 1 < n.slidesPerColumn, r && !d ? l.removeClass(o.containerModifierClass + 'multirow ' + o.containerModifierClass + 'multirow-column') : !r && d && (l.addClass(o.containerModifierClass + 'multirow'), 'column' === n.slidesPerColumnFill && l.addClass(o.containerModifierClass + 'multirow-column')), l = n.direction && n.direction !== o.direction, o = o.loop && (n.slidesPerView !== o.slidesPerView || l), l && t && this.changeDirection(), _.extend(this.params, n), _.extend(this, {
							allowTouchMove: this.params.allowTouchMove,
							allowSlideNext: this.params.allowSlideNext,
							allowSlidePrev: this.params.allowSlidePrev
						}), this.currentBreakpoint = s, o && t && (this.loopDestroy(), this.loopCreate(), this.updateSlides(), this.slideTo(e - i + this.loopedSlides, 0, !1)), this.emit('breakpoint', n))
					},
					getBreakpoint: function (e) {
						if (e) {
							var t = !1,
								i = Object.keys(e).map(function (e) {
									if ('string' != typeof e || 0 !== e.indexOf('@')) return {
										value: e,
										point: e
									};
									var t = parseFloat(e.substr(1));
									return {
										value: j.innerHeight * t,
										point: e
									}
								});
							i.sort(function (e, t) {
								return parseInt(e.value, 10) - parseInt(t.value, 10)
							});
							for (var s = 0; s < i.length; s += 1) {
								var a = i[s],
									n = a.point;
								a.value <= j.innerWidth && (t = n)
							}
							return t || 'max'
						}
					}
				},
				checkOverflow: {
					checkOverflow: function () {
						var e = this.params,
							t = this.isLocked,
							i = 0 < this.slides.length && e.slidesOffsetBefore + e.spaceBetween * (this.slides.length - 1) + this.slides[0].offsetWidth * this.slides.length;
						e.slidesOffsetBefore && e.slidesOffsetAfter && i ? this.isLocked = i <= this.size : this.isLocked = 1 === this.snapGrid.length,
							this.allowSlideNext = !this.isLocked,
							this.allowSlidePrev = !this.isLocked,
							t !== this.isLocked && this.emit(this.isLocked ? 'lock' : 'unlock'),
							t && t !== this.isLocked && (this.isEnd = !1, this.navigation.update())
					}
				},
				classes: {
					addClasses: function () {
						var t = this.classNames,
							i = this.params,
							e = this.rtl,
							s = this.$el,
							a = [
							];
						a.push('initialized'),
							a.push(i.direction),
							i.freeMode && a.push('free-mode'),
							i.autoHeight && a.push('autoheight'),
							e && a.push('rtl'),
							1 < i.slidesPerColumn && (a.push('multirow'), 'column' === i.slidesPerColumnFill && a.push('multirow-column')),
							k.android && a.push('android'),
							k.ios && a.push('ios'),
							i.cssMode && a.push('css-mode'),
							a.forEach(function (e) {
								t.push(i.containerModifierClass + e)
							}),
							s.addClass(t.join(' '))
					},
					removeClasses: function () {
						var e = this.$el,
							t = this.classNames;
						e.removeClass(t.join(' '))
					}
				},
				images: {
					loadImage: function (e, t, i, s, a, n) {
						function r() {
							n && n()
						}
						!(E(e).parent('picture')[0] || e.complete && a) && t ? ((a = new j.Image).onload = r, a.onerror = r, s && (a.sizes = s), i && (a.srcset = i), t && (a.src = t)) : r()
					},
					preloadImages: function () {
						var e = this;
						function t() {
							null != e && e && !e.destroyed && (void 0 !== e.imagesLoaded && (e.imagesLoaded += 1), e.imagesLoaded === e.imagesToLoad.length && (e.params.updateOnImagesReady && e.update(), e.emit('imagesReady')))
						}
						e.imagesToLoad = e.$el.find('img');
						for (var i = 0; i < e.imagesToLoad.length; i += 1) {
							var s = e.imagesToLoad[i];
							e.loadImage(s, s.currentSrc || s.getAttribute('src'), s.srcset || s.getAttribute('srcset'), s.sizes || s.getAttribute('sizes'), !0, t)
						}
					}
				}
			},
			A = {
			},
			H = function (d) {
				function h() {
					for (var i, e = [
					], t = arguments.length; t--;) e[t] = arguments[t];
					i = 1 === e.length && e[0].constructor && e[0].constructor === Object ? e[0] : (r = e[0], e[1]),
						i = _.extend({
						}, i = i || {
						}),
						r && !i.el && (i.el = r),
						d.call(this, i),
						Object.keys(D).forEach(function (t) {
							Object.keys(D[t]).forEach(function (e) {
								h.prototype[e] || (h.prototype[e] = D[t][e])
							})
						});
					var s = this;
					void 0 === s.modules && (s.modules = {
					}),
						Object.keys(s.modules).forEach(function (e) {
							var t = s.modules[e];
							t.params && (e = Object.keys(t.params)[0], 'object' == typeof (t = t.params[e]) && null !== t && e in i && 'enabled' in t && (!0 === i[e] && (i[e] = {
								enabled: !0
							}), 'object' != typeof i[e] || 'enabled' in i[e] || (i[e].enabled = !0), i[e] || (i[e] = {
								enabled: !1
							})))
						});
					var a = _.extend({
					}, O);
					s.useModulesParams(a),
						s.params = _.extend({
						}, a, A, i),
						s.originalParams = _.extend({
						}, s.params),
						s.passedParams = _.extend({
						}, i);
					var n,
						r,
						o = (s.$ = E)(s.params.el);
					if (r = o[0]) {
						if (1 < o.length) {
							var l = [
							];
							return o.each(function (e, t) {
								t = _.extend({
								}, i, {
									el: t
								});
								l.push(new h(t))
							}),
								l
						}
						return r.swiper = s,
							o.data('swiper', s),
							r && r.shadowRoot && r.shadowRoot.querySelector ? (n = E(r.shadowRoot.querySelector('.' + s.params.wrapperClass))).children = function (e) {
								return o.children(e)
							}
								: n = o.children('.' + s.params.wrapperClass),
							_.extend(s, {
								$el: o,
								el: r,
								$wrapperEl: n,
								wrapperEl: n[0],
								classNames: [
								],
								slides: E(),
								slidesGrid: [
								],
								snapGrid: [
								],
								slidesSizesGrid: [
								],
								isHorizontal: function () {
									return 'horizontal' === s.params.direction
								},
								isVertical: function () {
									return 'vertical' === s.params.direction
								},
								rtl: 'rtl' === r.dir.toLowerCase() || 'rtl' === o.css('direction'),
								rtlTranslate: 'horizontal' === s.params.direction && ('rtl' === r.dir.toLowerCase() || 'rtl' === o.css('direction')),
								wrongRTL: '-webkit-box' === n.css('display'),
								activeIndex: 0,
								realIndex: 0,
								isBeginning: !0,
								isEnd: !1,
								translate: 0,
								previousTranslate: 0,
								progress: 0,
								velocity: 0,
								animating: !1,
								allowSlideNext: s.params.allowSlideNext,
								allowSlidePrev: s.params.allowSlidePrev,
								touchEvents: (r = [
									'mousedown',
									'mousemove',
									'mouseup'
								], y.pointerEvents && (r = [
									'pointerdown',
									'pointermove',
									'pointerup'
								]), s.touchEventsTouch = {
									start: (n = [
										'touchstart',
										'touchmove',
										'touchend',
										'touchcancel'
									])[0],
									move: n[1],
									end: n[2],
									cancel: n[3]
								}, s.touchEventsDesktop = {
									start: r[0],
									move: r[1],
									end: r[2]
								}, y.touch || !s.params.simulateTouch ? s.touchEventsTouch : s.touchEventsDesktop),
								touchEventsData: {
									isTouched: void 0,
									isMoved: void 0,
									allowTouchCallbacks: void 0,
									touchStartTime: void 0,
									isScrolling: void 0,
									currentTranslate: void 0,
									startTranslate: void 0,
									allowThresholdMove: void 0,
									formElements: 'input, select, option, textarea, button, video, label',
									lastClickTime: _.now(),
									clickTimeout: void 0,
									velocities: [
									],
									allowMomentumBounce: void 0,
									isTouchEvent: void 0,
									startMoving: void 0
								},
								allowClick: !0,
								allowTouchMove: s.params.allowTouchMove,
								touches: {
									startX: 0,
									startY: 0,
									currentX: 0,
									currentY: 0,
									diff: 0
								},
								imagesToLoad: [
								],
								imagesLoaded: 0
							}),
							s.useModules(),
							s.params.init && s.init(),
							s
					}
				}
				d && (h.__proto__ = d),
					h.prototype = Object.create(d && d.prototype);
				var e = {
					extendedDefaults: {
						configurable: !0
					},
					defaults: {
						configurable: !0
					},
					Class: {
						configurable: !0
					},
					$: {
						configurable: !0
					}
				};
				return (h.prototype.constructor = h).prototype.slidesPerViewDynamic = function () {
					var e = this.params,
						t = this.slides,
						i = this.slidesGrid,
						s = this.size,
						a = this.activeIndex,
						n = 1;
					if (e.centeredSlides) {
						for (var r, o = t[a].swiperSlideSize, l = a + 1; l < t.length; l += 1) t[l] && !r && (n += 1, (o += t[l].swiperSlideSize) > s && (r = !0));
						for (var d = a - 1; 0 <= d; --d) t[d] && !r && (n += 1, (o += t[d].swiperSlideSize) > s && (r = !0))
					} else for (var h = a + 1; h < t.length; h += 1) i[h] - i[a] < s && (n += 1);
					return n
				},
					h.prototype.update = function () {
						var e,
							t,
							i = this;
						function s() {
							var e = i.rtlTranslate ? - 1 * i.translate : i.translate,
								e = Math.min(Math.max(e, i.maxTranslate()), i.minTranslate());
							i.setTranslate(e),
								i.updateActiveIndex(),
								i.updateSlidesClasses()
						}
						i && !i.destroyed && (e = i.snapGrid, (t = i.params).breakpoints && i.setBreakpoint(), i.updateSize(), i.updateSlides(), i.updateProgress(), i.updateSlidesClasses(), i.params.freeMode ? (s(), i.params.autoHeight && i.updateAutoHeight()) : (('auto' === i.params.slidesPerView || 1 < i.params.slidesPerView) && i.isEnd && !i.params.centeredSlides ? i.slideTo(i.slides.length - 1, 0, !1, !0) : i.slideTo(i.activeIndex, 0, !1, !0)) || s(), t.watchOverflow && e !== i.snapGrid && i.checkOverflow(), i.emit('update'))
					},
					h.prototype.changeDirection = function (i, e) {
						void 0 === e && (e = !0);
						var t = this.params.direction;
						return (i = i || ('horizontal' === t ? 'vertical' : 'horizontal')) === t || 'horizontal' !== i && 'vertical' !== i || (this.$el.removeClass('' + this.params.containerModifierClass + t).addClass('' + this.params.containerModifierClass + i), this.params.direction = i, this.slides.each(function (e, t) {
							'vertical' === i ? t.style.width = '' : t.style.height = ''
						}), this.emit('changeDirection'), e && this.update()),
							this
					},
					h.prototype.init = function () {
						this.initialized || (this.emit('beforeInit'), this.params.breakpoints && this.setBreakpoint(), this.addClasses(), this.params.loop && this.loopCreate(), this.updateSize(), this.updateSlides(), this.params.watchOverflow && this.checkOverflow(), this.params.grabCursor && this.setGrabCursor(), this.params.preloadImages && this.preloadImages(), this.params.loop ? this.slideTo(this.params.initialSlide + this.loopedSlides, 0, this.params.runCallbacksOnInit) : this.slideTo(this.params.initialSlide, 0, this.params.runCallbacksOnInit), this.attachEvents(), this.initialized = !0, this.emit('init'))
					},
					h.prototype.destroy = function (e, t) {
						void 0 === e && (e = !0),
							void 0 === t && (t = !0);
						var i = this,
							s = i.params,
							a = i.$el,
							n = i.$wrapperEl,
							r = i.slides;
						return void 0 === i.params || i.destroyed || (i.emit('beforeDestroy'), i.initialized = !1, i.detachEvents(), s.loop && i.loopDestroy(), t && (i.removeClasses(), a.removeAttr('style'), n.removeAttr('style'), r && r.length && r.removeClass([s.slideVisibleClass,
						s.slideActiveClass,
						s.slideNextClass,
						s.slidePrevClass].join(' ')).removeAttr('style').removeAttr('data-swiper-slide-index')), i.emit('destroy'), Object.keys(i.eventsListeners).forEach(function (e) {
							i.off(e)
						}), !1 !== e && (i.$el[0].swiper = null, i.$el.data('swiper', null), _.deleteProps(i)), i.destroyed = !0),
							null
					},
					h.extendDefaults = function (e) {
						_.extend(A, e)
					},
					e.extendedDefaults.get = function () {
						return A
					},
					e.defaults.get = function () {
						return O
					},
					e.Class.get = function () {
						return d
					},
					e.$.get = function () {
						return E
					},
					Object.defineProperties(h, e),
					h
			}(i),
			T = {
				name: 'device',
				proto: {
					device: k
				},
				static: {
					device: k
				}
			},
			C = {
				name: 'support',
				proto: {
					support: y
				},
				static: {
					support: y
				}
			},
			B = {
				isEdge: !!j.navigator.userAgent.match(/Edge/g),
				isSafari: 0 <= (S = j.navigator.userAgent.toLowerCase()).indexOf('safari') && S.indexOf('chrome') < 0 && S.indexOf('android') < 0,
				isUiWebView: /(iPhone|iPod|iPad).*AppleWebKit(?!.*Safari)/i.test(j.navigator.userAgent)
			},
			M = {
				name: 'browser',
				proto: {
					browser: B
				},
				static: {
					browser: B
				}
			},
			z = {
				name: 'resize',
				create: function () {
					var e = this;
					_.extend(e, {
						resize: {
							resizeHandler: function () {
								e && !e.destroyed && e.initialized && (e.emit('beforeResize'), e.emit('resize'))
							},
							orientationChangeHandler: function () {
								e && !e.destroyed && e.initialized && e.emit('orientationchange')
							}
						}
					})
				},
				on: {
					init: function () {
						j.addEventListener('resize', this.resize.resizeHandler),
							j.addEventListener('orientationchange', this.resize.orientationChangeHandler)
					},
					destroy: function () {
						j.removeEventListener('resize', this.resize.resizeHandler),
							j.removeEventListener('orientationchange', this.resize.orientationChangeHandler)
					}
				}
			},
			N = {
				func: j.MutationObserver || j.WebkitMutationObserver,
				attach: function (e, t) {
					void 0 === t && (t = {
					});
					var i = this,
						s = new N.func(function (e) {
							var t;
							1 !== e.length ? (t = function () {
								i.emit('observerUpdate', e[0])
							}, j.requestAnimationFrame ? j.requestAnimationFrame(t) : j.setTimeout(t, 0)) : i.emit('observerUpdate', e[0])
						});
					s.observe(e, {
						attributes: void 0 === t.attributes || t.attributes,
						childList: void 0 === t.childList || t.childList,
						characterData: void 0 === t.characterData || t.characterData
					}),
						i.observer.observers.push(s)
				},
				init: function () {
					if (y.observer && this.params.observer) {
						if (this.params.observeParents) for (var e = this.$el.parents(), t = 0; t < e.length; t += 1) this.observer.attach(e[t]);
						this.observer.attach(this.$el[0], {
							childList: this.params.observeSlideChildren
						}),
							this.observer.attach(this.$wrapperEl[0], {
								attributes: !1
							})
					}
				},
				destroy: function () {
					this.observer.observers.forEach(function (e) {
						e.disconnect()
					}),
						this.observer.observers = [
						]
				}
			},
			$ = {
				name: 'observer',
				params: {
					observer: !1,
					observeParents: !1,
					observeSlideChildren: !1
				},
				create: function () {
					_.extend(this, {
						observer: {
							init: N.init.bind(this),
							attach: N.attach.bind(this),
							destroy: N.destroy.bind(this),
							observers: [
							]
						}
					})
				},
				on: {
					init: function () {
						this.observer.init()
					},
					destroy: function () {
						this.observer.destroy()
					}
				}
			},
			G = {
				update: function (e) {
					var t = this,
						i = t.params,
						s = i.slidesPerView,
						a = i.slidesPerGroup,
						n = i.centeredSlides,
						r = t.params.virtual,
						o = r.addSlidesBefore,
						l = r.addSlidesAfter,
						d = t.virtual,
						h = d.from,
						c = d.to,
						p = d.slides,
						u = d.slidesGrid,
						m = d.renderSlide,
						i = d.offset;
					t.updateActiveIndex();
					var r = t.activeIndex || 0,
						d = t.rtlTranslate ? 'right' : t.isHorizontal() ? 'left' : 'top',
						l = n ? (g = Math.floor(s / 2) + a + o, Math.floor(s / 2) + a + l) : (g = s + (a - 1) + o, a + l),
						f = Math.max((r || 0) - l, 0),
						v = Math.min((r || 0) + g, p.length - 1),
						g = (t.slidesGrid[f] || 0) - (t.slidesGrid[0] || 0);
					function b() {
						t.updateSlides(),
							t.updateProgress(),
							t.updateSlidesClasses(),
							t.lazy && t.params.lazy.enabled && t.lazy.load()
					}
					if (_.extend(t.virtual, {
						from: f,
						to: v,
						offset: g,
						slidesGrid: t.slidesGrid
					}), h === f && c === v && !e) return t.slidesGrid !== u && g !== i && t.slides.css(d, g + 'px'),
						void t.updateProgress();
					if (t.params.virtual.renderExternal) return t.params.virtual.renderExternal.call(t, {
						offset: g,
						from: f,
						to: v,
						slides: function () {
							for (var e = [
							], t = f; t <= v; t += 1) e.push(p[t]);
							return e
						}()
					}),
						void b();
					var w = [
					],
						y = [
						];
					if (e) t.$wrapperEl.find('.' + t.params.slideClass).remove();
					else for (var x = h; x <= c; x += 1) (x < f || v < x) && t.$wrapperEl.find('.' + t.params.slideClass + '[data-swiper-slide-index="' + x + '"]').remove();
					for (var E = 0; E < p.length; E += 1) f <= E && E <= v && (void 0 === c || e ? y.push(E) : (c < E && y.push(E), E < h && w.push(E)));
					y.forEach(function (e) {
						t.$wrapperEl.append(m(p[e], e))
					}),
						w.sort(function (e, t) {
							return t - e
						}).forEach(function (e) {
							t.$wrapperEl.prepend(m(p[e], e))
						}),
						t.$wrapperEl.children('.swiper-slide').css(d, g + 'px'),
						b()
				},
				renderSlide: function (e, t) {
					var i = this.params.virtual;
					if (i.cache && this.virtual.cache[t]) return this.virtual.cache[t];
					e = i.renderSlide ? E(i.renderSlide.call(this, e, t)) : E('<div class="' + this.params.slideClass + '" data-swiper-slide-index="' + t + '">' + e + '</div>');
					return e.attr('data-swiper-slide-index') || e.attr('data-swiper-slide-index', t),
						i.cache && (this.virtual.cache[t] = e),
						e
				},
				appendSlide: function (e) {
					if ('object' == typeof e && 'length' in e) for (var t = 0; t < e.length; t += 1) e[t] && this.virtual.slides.push(e[t]);
					else this.virtual.slides.push(e);
					this.virtual.update(!0)
				},
				prependSlide: function (e) {
					var s,
						a,
						t = this.activeIndex,
						i = t + 1,
						n = 1;
					if (Array.isArray(e)) {
						for (var r = 0; r < e.length; r += 1) e[r] && this.virtual.slides.unshift(e[r]);
						i = t + e.length,
							n = e.length
					} else this.virtual.slides.unshift(e);
					this.params.virtual.cache && (s = this.virtual.cache, a = {
					}, Object.keys(s).forEach(function (e) {
						var t = s[e],
							i = t.attr('data-swiper-slide-index');
						i && t.attr('data-swiper-slide-index', parseInt(i, 10) + 1),
							a[parseInt(e, 10) + n] = t
					}), this.virtual.cache = a),
						this.virtual.update(!0),
						this.slideTo(i, 0)
				},
				removeSlide: function (e) {
					if (null != e) {
						var t = this.activeIndex;
						if (Array.isArray(e)) for (var i = e.length - 1; 0 <= i; --i) this.virtual.slides.splice(e[i], 1),
							this.params.virtual.cache && delete this.virtual.cache[e[i]],
							e[i] < t && --t,
							t = Math.max(t, 0);
						else this.virtual.slides.splice(e, 1),
							this.params.virtual.cache && delete this.virtual.cache[e],
							e < t && --t,
							t = Math.max(t, 0);
						this.virtual.update(!0),
							this.slideTo(t, 0)
					}
				},
				removeAllSlides: function () {
					this.virtual.slides = [
					],
						this.params.virtual.cache && (this.virtual.cache = {
						}),
						this.virtual.update(!0),
						this.slideTo(0, 0)
				}
			},
			i = {
				name: 'virtual',
				params: {
					virtual: {
						enabled: !1,
						slides: [
						],
						cache: !0,
						renderSlide: null,
						renderExternal: null,
						addSlidesBefore: 0,
						addSlidesAfter: 0
					}
				},
				create: function () {
					_.extend(this, {
						virtual: {
							update: G.update.bind(this),
							appendSlide: G.appendSlide.bind(this),
							prependSlide: G.prependSlide.bind(this),
							removeSlide: G.removeSlide.bind(this),
							removeAllSlides: G.removeAllSlides.bind(this),
							renderSlide: G.renderSlide.bind(this),
							slides: this.params.virtual.slides,
							cache: {
							}
						}
					})
				},
				on: {
					beforeInit: function () {
						var e;
						this.params.virtual.enabled && (this.classNames.push(this.params.containerModifierClass + 'virtual'), _.extend(this.params, e = {
							watchSlidesProgress: !0
						}), _.extend(this.originalParams, e), this.params.initialSlide || this.virtual.update())
					},
					setTranslate: function () {
						this.params.virtual.enabled && this.virtual.update()
					}
				}
			},
			V = {
				handle: function (e) {
					var t = this.rtlTranslate,
						i = e,
						s = (i = i.originalEvent ? i.originalEvent : i).keyCode || i.charCode;
					if (!this.allowSlideNext && (this.isHorizontal() && 39 === s || this.isVertical() && 40 === s || 34 === s)) return !1;
					if (!this.allowSlidePrev && (this.isHorizontal() && 37 === s || this.isVertical() && 38 === s || 33 === s)) return !1;
					if (!(i.shiftKey || i.altKey || i.ctrlKey || i.metaKey || c.activeElement && c.activeElement.nodeName && ('input' === c.activeElement.nodeName.toLowerCase() || 'textarea' === c.activeElement.nodeName.toLowerCase()))) {
						if (this.params.keyboard.onlyInViewport && (33 === s || 34 === s || 37 === s || 39 === s || 38 === s || 40 === s)) {
							var a = !1;
							if (0 < this.$el.parents('.' + this.params.slideClass).length && 0 === this.$el.parents('.' + this.params.slideActiveClass).length) return;
							var n = j.innerWidth,
								r = j.innerHeight,
								e = this.$el.offset();
							t && (e.left -= this.$el[0].scrollLeft);
							for (var o = [
								[e.left,
								e.top],
								[
									e.left + this.width,
									e.top
								],
								[
									e.left,
									e.top + this.height
								],
								[
									e.left + this.width,
									e.top + this.height
								]
							], l = 0; l < o.length; l += 1) {
								var d = o[l];
								0 <= d[0] && d[0] <= n && 0 <= d[1] && d[1] <= r && (a = !0)
							}
							if (!a) return
						}
						this.isHorizontal() ? (33 !== s && 34 !== s && 37 !== s && 39 !== s || (i.preventDefault ? i.preventDefault() : i.returnValue = !1), (34 !== s && 39 !== s || t) && (33 !== s && 37 !== s || !t) || this.slideNext(), (33 !== s && 37 !== s || t) && (34 !== s && 39 !== s || !t) || this.slidePrev()) : (33 !== s && 34 !== s && 38 !== s && 40 !== s || (i.preventDefault ? i.preventDefault() : i.returnValue = !1), 34 !== s && 40 !== s || this.slideNext(), 33 !== s && 38 !== s || this.slidePrev()),
							this.emit('keyPress', s)
					}
				},
				enable: function () {
					this.keyboard.enabled || (E(c).on('keydown', this.keyboard.handle), this.keyboard.enabled = !0)
				},
				disable: function () {
					this.keyboard.enabled && (E(c).off('keydown', this.keyboard.handle), this.keyboard.enabled = !1)
				}
			},
			S = {
				name: 'keyboard',
				params: {
					keyboard: {
						enabled: !1,
						onlyInViewport: !0
					}
				},
				create: function () {
					_.extend(this, {
						keyboard: {
							enabled: !1,
							enable: V.enable.bind(this),
							disable: V.disable.bind(this),
							handle: V.handle.bind(this)
						}
					})
				},
				on: {
					init: function () {
						this.params.keyboard.enabled && this.keyboard.enable()
					},
					destroy: function () {
						this.keyboard.enabled && this.keyboard.disable()
					}
				}
			},
			F = {
				lastScrollTime: _.now(),
				lastEventBeforeSnap: void 0,
				recentWheelEvents: [
				],
				event: function () {
					return - 1 < j.navigator.userAgent.indexOf('firefox') ? 'DOMMouseScroll' : ((t = 'onwheel' in c) || ((e = c.createElement('div')).setAttribute('onwheel', 'return;'), t = 'function' == typeof e.onwheel), (t = !t && c.implementation && c.implementation.hasFeature && !0 !== c.implementation.hasFeature('', '') ? c.implementation.hasFeature('Events.wheel', '3.0') : t) ? 'wheel' : 'mousewheel');
					var e,
						t
				},
				normalize: function (e) {
					var t = 0,
						i = 0,
						s = 0,
						a = 0;
					return 'detail' in e && (i = e.detail),
						'wheelDelta' in e && (i = - e.wheelDelta / 120),
						'wheelDeltaY' in e && (i = - e.wheelDeltaY / 120),
						'wheelDeltaX' in e && (t = - e.wheelDeltaX / 120),
						'axis' in e && e.axis === e.HORIZONTAL_AXIS && (t = i, i = 0),
						s = 10 * t,
						a = 10 * i,
						'deltaY' in e && (a = e.deltaY),
						'deltaX' in e && (s = e.deltaX),
						e.shiftKey && !s && (s = a, a = 0),
						(s || a) && e.deltaMode && (1 === e.deltaMode ? (s *= 40, a *= 40) : (s *= 800, a *= 800)),
					{
						spinX: t = s && !t ? s < 1 ? - 1 : 1 : t,
						spinY: i = a && !i ? a < 1 ? - 1 : 1 : i,
						pixelX: s,
						pixelY: a
					}
				},
				handleMouseEnter: function () {
					this.mouseEntered = !0
				},
				handleMouseLeave: function () {
					this.mouseEntered = !1
				},
				handle: function (e) {
					var t = e,
						i = this,
						s = i.params.mousewheel;
					i.params.cssMode && t.preventDefault();
					var a = i.$el;
					if ('container' !== i.params.mousewheel.eventsTarged && (a = E(i.params.mousewheel.eventsTarged)), !i.mouseEntered && !a[0].contains(t.target) && !s.releaseOnEdges) return !0;
					t.originalEvent && (t = t.originalEvent);
					var n = 0,
						r = i.rtlTranslate ? - 1 : 1,
						a = F.normalize(t);
					if (s.forceToAxis) if (i.isHorizontal()) {
						if (!(Math.abs(a.pixelX) > Math.abs(a.pixelY))) return !0;
						n = a.pixelX * r
					} else {
						if (!(Math.abs(a.pixelY) > Math.abs(a.pixelX))) return !0;
						n = a.pixelY
					} else n = Math.abs(a.pixelX) > Math.abs(a.pixelY) ? - a.pixelX * r : - a.pixelY;
					if (0 === n) return !0;
					if (s.invert && (n = - n), i.params.freeMode) {
						var o = {
							time: _.now(),
							delta: Math.abs(n),
							direction: Math.sign(n)
						},
							r = i.mousewheel.lastEventBeforeSnap,
							a = r && o.time < r.time + 500 && o.delta <= r.delta && o.direction === r.direction;
						if (!a) {
							i.mousewheel.lastEventBeforeSnap = void 0,
								i.params.loop && i.loopFix();
							var l,
								d,
								h = i.getTranslate() + n * s.sensitivity,
								r = i.isBeginning,
								s = i.isEnd;
							if ((h = h >= i.minTranslate() ? i.minTranslate() : h) <= i.maxTranslate() && (h = i.maxTranslate()), i.setTransition(0), i.setTranslate(h), i.updateProgress(), i.updateActiveIndex(), i.updateSlidesClasses(), (!r && i.isBeginning || !s && i.isEnd) && i.updateSlidesClasses(), i.params.freeModeSticky && (clearTimeout(i.mousewheel.timeout), i.mousewheel.timeout = void 0, 15 <= (l = i.mousewheel.recentWheelEvents).length && l.shift(), r = l.length ? l[l.length - 1] : void 0, s = l[0], l.push(o), r && (o.delta > r.delta || o.direction !== r.direction) ? l.splice(0) : 15 <= l.length && o.time - s.time < 500 && 1 <= s.delta - o.delta && o.delta <= 6 && (d = 0 < n ? 0.8 : 0.2, i.mousewheel.lastEventBeforeSnap = o, l.splice(0), i.mousewheel.timeout = _.nextTick(function () {
								i.slideToClosest(i.params.speed, !0, void 0, d)
							}, 0)), i.mousewheel.timeout || (i.mousewheel.timeout = _.nextTick(function () {
								i.mousewheel.lastEventBeforeSnap = o,
									l.splice(0),
									i.slideToClosest(i.params.speed, !0, void 0, 0.5)
							}, 500))), a || i.emit('scroll', t), i.params.autoplay && i.params.autoplayDisableOnInteraction && i.autoplay.stop(), h === i.minTranslate() || h === i.maxTranslate()) return !0
						}
					} else {
						h = {
							time: _.now(),
							delta: Math.abs(n),
							direction: Math.sign(n),
							raw: e
						},
							n = i.mousewheel.recentWheelEvents;
						2 <= n.length && n.shift();
						e = n.length ? n[n.length - 1] : void 0;
						if (n.push(h), (!e || h.direction !== e.direction || h.delta > e.delta || h.time > e.time + 150) && i.mousewheel.animateSlider(h), i.mousewheel.releaseScroll(h)) return !0
					}
					return t.preventDefault ? t.preventDefault() : t.returnValue = !1,
						!1
				},
				animateSlider: function (e) {
					return 6 <= e.delta && _.now() - this.mousewheel.lastScrollTime < 60 || (e.direction < 0 ? this.isEnd && !this.params.loop || this.animating || (this.slideNext(), this.emit('scroll', e.raw)) : this.isBeginning && !this.params.loop || this.animating || (this.slidePrev(), this.emit('scroll', e.raw)), this.mousewheel.lastScrollTime = (new j.Date).getTime(), !1)
				},
				releaseScroll: function (e) {
					var t = this.params.mousewheel;
					if (e.direction < 0) {
						if (this.isEnd && !this.params.loop && t.releaseOnEdges) return !0
					} else if (this.isBeginning && !this.params.loop && t.releaseOnEdges) return !0;
					return !1
				},
				enable: function () {
					var e = F.event();
					if (this.params.cssMode) return this.wrapperEl.removeEventListener(e, this.mousewheel.handle),
						!0;
					if (!e) return !1;
					if (this.mousewheel.enabled) return !1;
					var t = this.$el;
					return (t = 'container' !== this.params.mousewheel.eventsTarged ? E(this.params.mousewheel.eventsTarged) : t).on('mouseenter', this.mousewheel.handleMouseEnter),
						t.on('mouseleave', this.mousewheel.handleMouseLeave),
						t.on(e, this.mousewheel.handle),
						this.mousewheel.enabled = !0
				},
				disable: function () {
					var e = F.event();
					if (this.params.cssMode) return this.wrapperEl.addEventListener(e, this.mousewheel.handle),
						!0;
					if (!e) return !1;
					if (!this.mousewheel.enabled) return !1;
					var t = this.$el;
					return (t = 'container' !== this.params.mousewheel.eventsTarged ? E(this.params.mousewheel.eventsTarged) : t).off(e, this.mousewheel.handle),
						!(this.mousewheel.enabled = !1)
				}
			},
			X = {
				update: function () {
					var e,
						t,
						i = this.params.navigation;
					this.params.loop || (e = (t = this.navigation).$nextEl, (t = t.$prevEl) && 0 < t.length && (this.isBeginning ? t.addClass(i.disabledClass) : t.removeClass(i.disabledClass), t[this.params.watchOverflow && this.isLocked ? 'addClass' : 'removeClass'](i.lockClass)), e && 0 < e.length && (this.isEnd ? e.addClass(i.disabledClass) : e.removeClass(i.disabledClass), e[this.params.watchOverflow && this.isLocked ? 'addClass' : 'removeClass'](i.lockClass)))
				},
				onPrevClick: function (e) {
					e.preventDefault(),
						this.isBeginning && !this.params.loop || this.slidePrev()
				},
				onNextClick: function (e) {
					e.preventDefault(),
						this.isEnd && !this.params.loop || this.slideNext()
				},
				init: function () {
					var e,
						t,
						i = this.params.navigation;
					(i.nextEl || i.prevEl) && (i.nextEl && (e = E(i.nextEl), this.params.uniqueNavElements && 'string' == typeof i.nextEl && 1 < e.length && 1 === this.$el.find(i.nextEl).length && (e = this.$el.find(i.nextEl))), i.prevEl && (t = E(i.prevEl), this.params.uniqueNavElements && 'string' == typeof i.prevEl && 1 < t.length && 1 === this.$el.find(i.prevEl).length && (t = this.$el.find(i.prevEl))), e && 0 < e.length && e.on('click', this.navigation.onNextClick), t && 0 < t.length && t.on('click', this.navigation.onPrevClick), _.extend(this.navigation, {
						$nextEl: e,
						nextEl: e && e[0],
						$prevEl: t,
						prevEl: t && t[0]
					}))
				},
				destroy: function () {
					var e = this.navigation,
						t = e.$nextEl,
						e = e.$prevEl;
					t && t.length && (t.off('click', this.navigation.onNextClick), t.removeClass(this.params.navigation.disabledClass)),
						e && e.length && (e.off('click', this.navigation.onPrevClick), e.removeClass(this.params.navigation.disabledClass))
				}
			},
			Y = {
				update: function () {
					var e = this.rtl,
						s = this.params.pagination;
					if (s.el && this.pagination.el && this.pagination.$el && 0 !== this.pagination.$el.length) {
						var a,
							t = (this.virtual && this.params.virtual.enabled ? this.virtual : this).slides.length,
							i = this.pagination.$el,
							n = this.params.loop ? Math.ceil((t - 2 * this.loopedSlides) / this.params.slidesPerGroup) : this.snapGrid.length;
						if (this.params.loop ? ((a = Math.ceil((this.activeIndex - this.loopedSlides) / this.params.slidesPerGroup)) > t - 1 - 2 * this.loopedSlides && (a -= t - 2 * this.loopedSlides), n - 1 < a && (a -= n), a < 0 && 'bullets' !== this.params.paginationType && (a = n + a)) : a = void 0 !== this.snapIndex ? this.snapIndex : this.activeIndex || 0, 'bullets' === s.type && this.pagination.bullets && 0 < this.pagination.bullets.length) {
							var r,
								o,
								l,
								d,
								h,
								c = this.pagination.bullets;
							if (s.dynamicBullets && (this.pagination.bulletSize = c.eq(0)[this.isHorizontal() ? 'outerWidth' : 'outerHeight'](!0), i.css(this.isHorizontal() ? 'width' : 'height', this.pagination.bulletSize * (s.dynamicMainBullets + 4) + 'px'), 1 < s.dynamicMainBullets && void 0 !== this.previousIndex && (this.pagination.dynamicBulletIndex += a - this.previousIndex, this.pagination.dynamicBulletIndex > s.dynamicMainBullets - 1 ? this.pagination.dynamicBulletIndex = s.dynamicMainBullets - 1 : this.pagination.dynamicBulletIndex < 0 && (this.pagination.dynamicBulletIndex = 0)), r = a - this.pagination.dynamicBulletIndex, l = ((o = r + (Math.min(c.length, s.dynamicMainBullets) - 1)) + r) / 2), c.removeClass(s.bulletActiveClass + ' ' + s.bulletActiveClass + '-next ' + s.bulletActiveClass + '-next-next ' + s.bulletActiveClass + '-prev ' + s.bulletActiveClass + '-prev-prev ' + s.bulletActiveClass + '-main'), 1 < i.length) c.each(function (e, t) {
								var i = E(t),
									t = i.index();
								t === a && i.addClass(s.bulletActiveClass),
									s.dynamicBullets && (r <= t && t <= o && i.addClass(s.bulletActiveClass + '-main'), t === r && i.prev().addClass(s.bulletActiveClass + '-prev').prev().addClass(s.bulletActiveClass + '-prev-prev'), t === o && i.next().addClass(s.bulletActiveClass + '-next').next().addClass(s.bulletActiveClass + '-next-next'))
							});
							else {
								var p = c.eq(a),
									u = p.index();
								if (p.addClass(s.bulletActiveClass), s.dynamicBullets) {
									for (var t = c.eq(r), p = c.eq(o), m = r; m <= o; m += 1) c.eq(m).addClass(s.bulletActiveClass + '-main');
									if (this.params.loop) if (u >= c.length - s.dynamicMainBullets) {
										for (var f = s.dynamicMainBullets; 0 <= f; --f) c.eq(c.length - f).addClass(s.bulletActiveClass + '-main');
										c.eq(c.length - s.dynamicMainBullets - 1).addClass(s.bulletActiveClass + '-prev')
									} else t.prev().addClass(s.bulletActiveClass + '-prev').prev().addClass(s.bulletActiveClass + '-prev-prev'),
										p.next().addClass(s.bulletActiveClass + '-next').next().addClass(s.bulletActiveClass + '-next-next');
									else t.prev().addClass(s.bulletActiveClass + '-prev').prev().addClass(s.bulletActiveClass + '-prev-prev'),
										p.next().addClass(s.bulletActiveClass + '-next').next().addClass(s.bulletActiveClass + '-next-next')
								}
							}
							s.dynamicBullets && (h = Math.min(c.length, s.dynamicMainBullets + 4), d = (this.pagination.bulletSize * h - this.pagination.bulletSize) / 2 - l * this.pagination.bulletSize, h = e ? 'right' : 'left', c.css(this.isHorizontal() ? h : 'top', d + 'px'))
						}
						'fraction' === s.type && (i.find('.' + s.currentClass).text(s.formatFractionCurrent(a + 1)), i.find('.' + s.totalClass).text(s.formatFractionTotal(n))),
							'progressbar' === s.type && (l = s.progressbarOpposite ? this.isHorizontal() ? 'vertical' : 'horizontal' : this.isHorizontal() ? 'horizontal' : 'vertical', e = (a + 1) / n, d = h = 1, 'horizontal' == l ? h = e : d = e, i.find('.' + s.progressbarFillClass).transform('translate3d(0,0,0) scaleX(' + h + ') scaleY(' + d + ')').transition(this.params.speed)),
							'custom' === s.type && s.renderCustom ? (i.html(s.renderCustom(this, a + 1, n)), this.emit('paginationRender', this, i[0])) : this.emit('paginationUpdate', this, i[0]),
							i[this.params.watchOverflow && this.isLocked ? 'addClass' : 'removeClass'](s.lockClass)
					}
				},
				render: function () {
					var e = this.params.pagination;
					if (e.el && this.pagination.el && this.pagination.$el && 0 !== this.pagination.$el.length) {
						var t = (this.virtual && this.params.virtual.enabled ? this.virtual : this).slides.length,
							i = this.pagination.$el,
							s = '';
						if ('bullets' === e.type) {
							for (var a = this.params.loop ? Math.ceil((t - 2 * this.loopedSlides) / this.params.slidesPerGroup) : this.snapGrid.length, n = 0; n < a; n += 1) e.renderBullet ? s += e.renderBullet.call(this, n, e.bulletClass) : s += '<' + e.bulletElement + ' class="' + e.bulletClass + '"></' + e.bulletElement + '>';
							i.html(s),
								this.pagination.bullets = i.find('.' + e.bulletClass)
						}
						'fraction' === e.type && (s = e.renderFraction ? e.renderFraction.call(this, e.currentClass, e.totalClass) : '<span class="' + e.currentClass + '"></span> / <span class="' + e.totalClass + '"></span>', i.html(s)),
							'progressbar' === e.type && (s = e.renderProgressbar ? e.renderProgressbar.call(this, e.progressbarFillClass) : '<span class="' + e.progressbarFillClass + '"></span>', i.html(s)),
							'custom' !== e.type && this.emit('paginationRender', this.pagination.$el[0])
					}
				},
				init: function () {
					var e,
						t = this,
						i = t.params.pagination;
					!i.el || 0 !== (e = E(i.el)).length && (t.params.uniqueNavElements && 'string' == typeof i.el && 1 < e.length && 1 === t.$el.find(i.el).length && (e = t.$el.find(i.el)), 'bullets' === i.type && i.clickable && e.addClass(i.clickableClass), e.addClass(i.modifierClass + i.type), 'bullets' === i.type && i.dynamicBullets && (e.addClass('' + i.modifierClass + i.type + '-dynamic'), t.pagination.dynamicBulletIndex = 0, i.dynamicMainBullets < 1 && (i.dynamicMainBullets = 1)), 'progressbar' === i.type && i.progressbarOpposite && e.addClass(i.progressbarOppositeClass), i.clickable && e.on('click', '.' + i.bulletClass, function (e) {
						e.preventDefault();
						e = E(this).index() * t.params.slidesPerGroup;
						t.params.loop && (e += t.loopedSlides),
							t.slideTo(e)
					}), _.extend(t.pagination, {
						$el: e,
						el: e[0]
					}))
				},
				destroy: function () {
					var e,
						t = this.params.pagination;
					t.el && this.pagination.el && this.pagination.$el && 0 !== this.pagination.$el.length && ((e = this.pagination.$el).removeClass(t.hiddenClass), e.removeClass(t.modifierClass + t.type), this.pagination.bullets && this.pagination.bullets.removeClass(t.bulletActiveClass), t.clickable && e.off('click', '.' + t.bulletClass))
				}
			},
			W = {
				setTranslate: function () {
					var e,
						t,
						i,
						s,
						a,
						n,
						r,
						o;
					this.params.scrollbar.el && this.scrollbar.el && (r = this.scrollbar, e = this.rtlTranslate, o = this.progress, t = r.dragSize, i = r.trackSize, s = r.$dragEl, a = r.$el, n = this.params.scrollbar, o = (i - (r = t)) * o, e ? 0 < (o = - o) ? (r = t - o, o = 0) : i < - o + t && (r = i + o) : o < 0 ? (r = t + o, o = 0) : i < o + t && (r = i - o), this.isHorizontal() ? (s.transform('translate3d(' + o + 'px, 0, 0)'), s[0].style.width = r + 'px') : (s.transform('translate3d(0px, ' + o + 'px, 0)'), s[0].style.height = r + 'px'), n.hide && (clearTimeout(this.scrollbar.timeout), a[0].style.opacity = 1, this.scrollbar.timeout = setTimeout(function () {
						a[0].style.opacity = 0,
							a.transition(400)
					}, 1000)))
				},
				setTransition: function (e) {
					this.params.scrollbar.el && this.scrollbar.el && this.scrollbar.$dragEl.transition(e)
				},
				updateSize: function () {
					var e,
						t,
						i,
						s,
						a,
						n,
						r;
					this.params.scrollbar.el && this.scrollbar.el && (t = (e = this.scrollbar).$dragEl, i = e.$el, t[0].style.width = '', t[0].style.height = '', s = this.isHorizontal() ? i[0].offsetWidth : i[0].offsetHeight, n = (a = this.size / this.virtualSize) * (s / this.size), r = 'auto' === this.params.scrollbar.dragSize ? s * a : parseInt(this.params.scrollbar.dragSize, 10), this.isHorizontal() ? t[0].style.width = r + 'px' : t[0].style.height = r + 'px', i[0].style.display = 1 <= a ? 'none' : '', this.params.scrollbar.hide && (i[0].style.opacity = 0), _.extend(e, {
						trackSize: s,
						divider: a,
						moveDivider: n,
						dragSize: r
					}), e.$el[this.params.watchOverflow && this.isLocked ? 'addClass' : 'removeClass'](this.params.scrollbar.lockClass))
				},
				getPointerPosition: function (e) {
					return this.isHorizontal() ? ('touchstart' === e.type || 'touchmove' === e.type ? e.targetTouches[0] : e).clientX : ('touchstart' === e.type || 'touchmove' === e.type ? e.targetTouches[0] : e).clientY
				},
				setDragPosition: function (e) {
					var t = this.scrollbar,
						i = this.rtlTranslate,
						s = t.$el,
						a = t.dragSize,
						n = t.trackSize,
						r = t.dragStartPos,
						a = (t.getPointerPosition(e) - s.offset()[this.isHorizontal() ? 'left' : 'top'] - (null !== r ? r : a / 2)) / (n - a);
					a = Math.max(Math.min(a, 1), 0),
						i && (a = 1 - a);
					a = this.minTranslate() + (this.maxTranslate() - this.minTranslate()) * a;
					this.updateProgress(a),
						this.setTranslate(a),
						this.updateActiveIndex(),
						this.updateSlidesClasses()
				},
				onDragStart: function (e) {
					var t = this.params.scrollbar,
						i = this.scrollbar,
						s = this.$wrapperEl,
						a = i.$el,
						n = i.$dragEl;
					this.scrollbar.isTouched = !0,
						this.scrollbar.dragStartPos = e.target === n[0] || e.target === n ? i.getPointerPosition(e) - e.target.getBoundingClientRect()[this.isHorizontal() ? 'left' : 'top'] : null,
						e.preventDefault(),
						e.stopPropagation(),
						s.transition(100),
						n.transition(100),
						i.setDragPosition(e),
						clearTimeout(this.scrollbar.dragTimeout),
						a.transition(0),
						t.hide && a.css('opacity', 1),
						this.params.cssMode && this.$wrapperEl.css('scroll-snap-type', 'none'),
						this.emit('scrollbarDragStart', e)
				},
				onDragMove: function (e) {
					var t = this.scrollbar,
						i = this.$wrapperEl,
						s = t.$el,
						a = t.$dragEl;
					this.scrollbar.isTouched && (e.preventDefault ? e.preventDefault() : e.returnValue = !1, t.setDragPosition(e), i.transition(0), s.transition(0), a.transition(0), this.emit('scrollbarDragMove', e))
				},
				onDragEnd: function (e) {
					var t = this.params.scrollbar,
						i = this.scrollbar,
						s = this.$wrapperEl,
						a = i.$el;
					this.scrollbar.isTouched && (this.scrollbar.isTouched = !1, this.params.cssMode && (this.$wrapperEl.css('scroll-snap-type', ''), s.transition('')), t.hide && (clearTimeout(this.scrollbar.dragTimeout), this.scrollbar.dragTimeout = _.nextTick(function () {
						a.css('opacity', 0),
							a.transition(400)
					}, 1000)), this.emit('scrollbarDragEnd', e), t.snapOnRelease && this.slideToClosest())
				},
				enableDraggable: function () {
					var e,
						t,
						i,
						s,
						a;
					this.params.scrollbar.el && (s = this.scrollbar, e = this.touchEventsTouch, t = this.touchEventsDesktop, a = this.params, i = s.$el[0], s = !(!y.passiveListener || !a.passiveListeners) && {
						passive: !1,
						capture: !1
					}, a = !(!y.passiveListener || !a.passiveListeners) && {
						passive: !0,
						capture: !1
					}, y.touch ? (i.addEventListener(e.start, this.scrollbar.onDragStart, s), i.addEventListener(e.move, this.scrollbar.onDragMove, s), i.addEventListener(e.end, this.scrollbar.onDragEnd, a)) : (i.addEventListener(t.start, this.scrollbar.onDragStart, s), c.addEventListener(t.move, this.scrollbar.onDragMove, s), c.addEventListener(t.end, this.scrollbar.onDragEnd, a)))
				},
				disableDraggable: function () {
					var e,
						t,
						i,
						s,
						a;
					this.params.scrollbar.el && (s = this.scrollbar, e = this.touchEventsTouch, t = this.touchEventsDesktop, a = this.params, i = s.$el[0], s = !(!y.passiveListener || !a.passiveListeners) && {
						passive: !1,
						capture: !1
					}, a = !(!y.passiveListener || !a.passiveListeners) && {
						passive: !0,
						capture: !1
					}, y.touch ? (i.removeEventListener(e.start, this.scrollbar.onDragStart, s), i.removeEventListener(e.move, this.scrollbar.onDragMove, s), i.removeEventListener(e.end, this.scrollbar.onDragEnd, a)) : (i.removeEventListener(t.start, this.scrollbar.onDragStart, s), c.removeEventListener(t.move, this.scrollbar.onDragMove, s), c.removeEventListener(t.end, this.scrollbar.onDragEnd, a)))
				},
				init: function () {
					var e,
						t,
						i,
						s;
					this.params.scrollbar.el && (e = this.scrollbar, s = this.$el, i = E((t = this.params.scrollbar).el), 0 === (s = (i = this.params.uniqueNavElements && 'string' == typeof t.el && 1 < i.length && 1 === s.find(t.el).length ? s.find(t.el) : i).find('.' + this.params.scrollbar.dragClass)).length && (s = E('<div class="' + this.params.scrollbar.dragClass + '"></div>'), i.append(s)), _.extend(e, {
						$el: i,
						el: i[0],
						$dragEl: s,
						dragEl: s[0]
					}), t.draggable && e.enableDraggable())
				},
				destroy: function () {
					this.scrollbar.disableDraggable()
				}
			},
			R = {
				setTransform: function (e, t) {
					var i = this.rtl,
						s = E(e),
						a = i ? - 1 : 1,
						n = s.attr('data-swiper-parallax') || '0',
						r = s.attr('data-swiper-parallax-x'),
						o = s.attr('data-swiper-parallax-y'),
						e = s.attr('data-swiper-parallax-scale'),
						i = s.attr('data-swiper-parallax-opacity');
					r || o ? (r = r || '0', o = o || '0') : this.isHorizontal() ? (r = n, o = '0') : (o = n, r = '0'),
						r = 0 <= r.indexOf('%') ? parseInt(r, 10) * t * a + '%' : r * t * a + 'px',
						o = 0 <= o.indexOf('%') ? parseInt(o, 10) * t + '%' : o * t + 'px',
						null != i && (i = i - (i - 1) * (1 - Math.abs(t)), s[0].style.opacity = i),
						null == e ? s.transform('translate3d(' + r + ', ' + o + ', 0px)') : (t = e - (e - 1) * (1 - Math.abs(t)), s.transform('translate3d(' + r + ', ' + o + ', 0px) scale(' + t + ')'))
				},
				setTranslate: function () {
					var s = this,
						e = s.$el,
						t = s.slides,
						a = s.progress,
						n = s.snapGrid;
					e.children('[data-swiper-parallax], [data-swiper-parallax-x], [data-swiper-parallax-y], [data-swiper-parallax-opacity], [data-swiper-parallax-scale]').each(function (e, t) {
						s.parallax.setTransform(t, a)
					}),
						t.each(function (e, t) {
							var i = t.progress;
							1 < s.params.slidesPerGroup && 'auto' !== s.params.slidesPerView && (i += Math.ceil(e / 2) - a * (n.length - 1)),
								i = Math.min(Math.max(i, - 1), 1),
								E(t).find('[data-swiper-parallax], [data-swiper-parallax-x], [data-swiper-parallax-y], [data-swiper-parallax-opacity], [data-swiper-parallax-scale]').each(function (e, t) {
									s.parallax.setTransform(t, i)
								})
						})
				},
				setTransition: function (s) {
					void 0 === s && (s = this.params.speed),
						this.$el.find('[data-swiper-parallax], [data-swiper-parallax-x], [data-swiper-parallax-y], [data-swiper-parallax-opacity], [data-swiper-parallax-scale]').each(function (e, t) {
							var i = E(t),
								t = parseInt(i.attr('data-swiper-parallax-duration'), 10) || s;
							i.transition(t = 0 === s ? 0 : t)
						})
				}
			},
			q = {
				getDistanceBetweenTouches: function (e) {
					if (e.targetTouches.length < 2) return 1;
					var t = e.targetTouches[0].pageX,
						i = e.targetTouches[0].pageY,
						s = e.targetTouches[1].pageX,
						e = e.targetTouches[1].pageY;
					return Math.sqrt(Math.pow(s - t, 2) + Math.pow(e - i, 2))
				},
				onGestureStart: function (e) {
					var t = this.params.zoom,
						i = this.zoom,
						s = i.gesture;
					if (i.fakeGestureTouched = !1, i.fakeGestureMoved = !1, !y.gestures) {
						if ('touchstart' !== e.type || 'touchstart' === e.type && e.targetTouches.length < 2) return;
						i.fakeGestureTouched = !0,
							s.scaleStart = q.getDistanceBetweenTouches(e)
					}
					s.$slideEl && s.$slideEl.length || (s.$slideEl = E(e.target).closest('.' + this.params.slideClass), 0 === s.$slideEl.length && (s.$slideEl = this.slides.eq(this.activeIndex)), s.$imageEl = s.$slideEl.find('img, svg, canvas, picture, .swiper-zoom-target'), s.$imageWrapEl = s.$imageEl.parent('.' + t.containerClass), s.maxRatio = s.$imageWrapEl.attr('data-swiper-zoom') || t.maxRatio, 0 !== s.$imageWrapEl.length) ? (s.$imageEl && s.$imageEl.transition(0), this.zoom.isScaling = !0) : s.$imageEl = void 0
				},
				onGestureChange: function (e) {
					var t = this.params.zoom,
						i = this.zoom,
						s = i.gesture;
					if (!y.gestures) {
						if ('touchmove' !== e.type || 'touchmove' === e.type && e.targetTouches.length < 2) return;
						i.fakeGestureMoved = !0,
							s.scaleMove = q.getDistanceBetweenTouches(e)
					}
					s.$imageEl && 0 !== s.$imageEl.length && (i.scale = y.gestures ? e.scale * i.currentScale : s.scaleMove / s.scaleStart * i.currentScale, i.scale > s.maxRatio && (i.scale = s.maxRatio - 1 + Math.pow(i.scale - s.maxRatio + 1, 0.5)), i.scale < t.minRatio && (i.scale = t.minRatio + 1 - Math.pow(t.minRatio - i.scale + 1, 0.5)), s.$imageEl.transform('translate3d(0,0,0) scale(' + i.scale + ')'))
				},
				onGestureEnd: function (e) {
					var t = this.params.zoom,
						i = this.zoom,
						s = i.gesture;
					if (!y.gestures) {
						if (!i.fakeGestureTouched || !i.fakeGestureMoved) return;
						if ('touchend' !== e.type || 'touchend' === e.type && e.changedTouches.length < 2 && !k.android) return;
						i.fakeGestureTouched = !1,
							i.fakeGestureMoved = !1
					}
					s.$imageEl && 0 !== s.$imageEl.length && (i.scale = Math.max(Math.min(i.scale, s.maxRatio), t.minRatio), s.$imageEl.transition(this.params.speed).transform('translate3d(0,0,0) scale(' + i.scale + ')'), i.currentScale = i.scale, i.isScaling = !1, 1 === i.scale && (s.$slideEl = void 0))
				},
				onTouchStart: function (e) {
					var t = this.zoom,
						i = t.gesture,
						t = t.image;
					i.$imageEl && 0 !== i.$imageEl.length && (t.isTouched || (k.android && e.cancelable && e.preventDefault(), t.isTouched = !0, t.touchesStart.x = ('touchstart' === e.type ? e.targetTouches[0] : e).pageX, t.touchesStart.y = ('touchstart' === e.type ? e.targetTouches[0] : e).pageY))
				},
				onTouchMove: function (e) {
					var t = this.zoom,
						i = t.gesture,
						s = t.image,
						a = t.velocity;
					if (i.$imageEl && 0 !== i.$imageEl.length && (this.allowClick = !1, s.isTouched && i.$slideEl)) {
						s.isMoved || (s.width = i.$imageEl[0].offsetWidth, s.height = i.$imageEl[0].offsetHeight, s.startX = _.getTranslate(i.$imageWrapEl[0], 'x') || 0, s.startY = _.getTranslate(i.$imageWrapEl[0], 'y') || 0, i.slideWidth = i.$slideEl[0].offsetWidth, i.slideHeight = i.$slideEl[0].offsetHeight, i.$imageWrapEl.transition(0), this.rtl && (s.startX = - s.startX, s.startY = - s.startY));
						var n = s.width * t.scale,
							r = s.height * t.scale;
						if (!(n < i.slideWidth && r < i.slideHeight)) {
							if (s.minX = Math.min(i.slideWidth / 2 - n / 2, 0), s.maxX = - s.minX, s.minY = Math.min(i.slideHeight / 2 - r / 2, 0), s.maxY = - s.minY, s.touchesCurrent.x = ('touchmove' === e.type ? e.targetTouches[0] : e).pageX, s.touchesCurrent.y = ('touchmove' === e.type ? e.targetTouches[0] : e).pageY, !s.isMoved && !t.isScaling) {
								if (this.isHorizontal() && (Math.floor(s.minX) === Math.floor(s.startX) && s.touchesCurrent.x < s.touchesStart.x || Math.floor(s.maxX) === Math.floor(s.startX) && s.touchesCurrent.x > s.touchesStart.x)) return void (s.isTouched = !1);
								if (!this.isHorizontal() && (Math.floor(s.minY) === Math.floor(s.startY) && s.touchesCurrent.y < s.touchesStart.y || Math.floor(s.maxY) === Math.floor(s.startY) && s.touchesCurrent.y > s.touchesStart.y)) return void (s.isTouched = !1)
							}
							e.cancelable && e.preventDefault(),
								e.stopPropagation(),
								s.isMoved = !0,
								s.currentX = s.touchesCurrent.x - s.touchesStart.x + s.startX,
								s.currentY = s.touchesCurrent.y - s.touchesStart.y + s.startY,
								s.currentX < s.minX && (s.currentX = s.minX + 1 - Math.pow(s.minX - s.currentX + 1, 0.8)),
								s.currentX > s.maxX && (s.currentX = s.maxX - 1 + Math.pow(s.currentX - s.maxX + 1, 0.8)),
								s.currentY < s.minY && (s.currentY = s.minY + 1 - Math.pow(s.minY - s.currentY + 1, 0.8)),
								s.currentY > s.maxY && (s.currentY = s.maxY - 1 + Math.pow(s.currentY - s.maxY + 1, 0.8)),
								a.prevPositionX || (a.prevPositionX = s.touchesCurrent.x),
								a.prevPositionY || (a.prevPositionY = s.touchesCurrent.y),
								a.prevTime || (a.prevTime = Date.now()),
								a.x = (s.touchesCurrent.x - a.prevPositionX) / (Date.now() - a.prevTime) / 2,
								a.y = (s.touchesCurrent.y - a.prevPositionY) / (Date.now() - a.prevTime) / 2,
								Math.abs(s.touchesCurrent.x - a.prevPositionX) < 2 && (a.x = 0),
								Math.abs(s.touchesCurrent.y - a.prevPositionY) < 2 && (a.y = 0),
								a.prevPositionX = s.touchesCurrent.x,
								a.prevPositionY = s.touchesCurrent.y,
								a.prevTime = Date.now(),
								i.$imageWrapEl.transform('translate3d(' + s.currentX + 'px, ' + s.currentY + 'px,0)')
						}
					}
				},
				onTouchEnd: function () {
					var e = this.zoom,
						t = e.gesture,
						i = e.image,
						s = e.velocity;
					if (t.$imageEl && 0 !== t.$imageEl.length) {
						if (!i.isTouched || !i.isMoved) return i.isTouched = !1,
							void (i.isMoved = !1);
						i.isTouched = !1,
							i.isMoved = !1;
						var a = 300,
							n = 300,
							r = s.x * a,
							o = i.currentX + r,
							r = s.y * n,
							r = i.currentY + r;
						0 !== s.x && (a = Math.abs((o - i.currentX) / s.x)),
							0 !== s.y && (n = Math.abs((r - i.currentY) / s.y));
						n = Math.max(a, n);
						i.currentX = o,
							i.currentY = r;
						r = i.width * e.scale,
							e = i.height * e.scale;
						i.minX = Math.min(t.slideWidth / 2 - r / 2, 0),
							i.maxX = - i.minX,
							i.minY = Math.min(t.slideHeight / 2 - e / 2, 0),
							i.maxY = - i.minY,
							i.currentX = Math.max(Math.min(i.currentX, i.maxX), i.minX),
							i.currentY = Math.max(Math.min(i.currentY, i.maxY), i.minY),
							t.$imageWrapEl.transition(n).transform('translate3d(' + i.currentX + 'px, ' + i.currentY + 'px,0)')
					}
				},
				onTransitionEnd: function () {
					var e = this.zoom,
						t = e.gesture;
					t.$slideEl && this.previousIndex !== this.activeIndex && (t.$imageEl && t.$imageEl.transform('translate3d(0,0,0) scale(1)'), t.$imageWrapEl && t.$imageWrapEl.transform('translate3d(0,0,0)'), e.scale = 1, e.currentScale = 1, t.$slideEl = void 0, t.$imageEl = void 0, t.$imageWrapEl = void 0)
				},
				toggle: function (e) {
					var t = this.zoom;
					t.scale && 1 !== t.scale ? t.out() : t.in(e)
				},
				in: function (e) {
					var t,
						i,
						s,
						a = this.zoom,
						n = this.params.zoom,
						r = a.gesture,
						o = a.image;
					r.$slideEl || (this.params.virtual && this.params.virtual.enabled && this.virtual ? r.$slideEl = this.$wrapperEl.children('.' + this.params.slideActiveClass) : r.$slideEl = this.slides.eq(this.activeIndex), r.$imageEl = r.$slideEl.find('img, svg, canvas, picture, .swiper-zoom-target'), r.$imageWrapEl = r.$imageEl.parent('.' + n.containerClass)),
						r.$imageEl && 0 !== r.$imageEl.length && (r.$slideEl.addClass('' + n.zoomedSlideClass), o = void 0 === o.touchesStart.x && e ? (s = ('touchend' === e.type ? e.changedTouches[0] : e).pageX, ('touchend' === e.type ? e.changedTouches[0] : e).pageY) : (s = o.touchesStart.x, o.touchesStart.y), a.scale = r.$imageWrapEl.attr('data-swiper-zoom') || n.maxRatio, a.currentScale = r.$imageWrapEl.attr('data-swiper-zoom') || n.maxRatio, e ? (n = r.$slideEl[0].offsetWidth, e = r.$slideEl[0].offsetHeight, t = r.$slideEl.offset().left + n / 2 - s, i = r.$slideEl.offset().top + e / 2 - o, s = r.$imageEl[0].offsetWidth, o = r.$imageEl[0].offsetHeight, s = s * a.scale, o = o * a.scale, s = - (n = Math.min(n / 2 - s / 2, 0)), o = - (e = Math.min(e / 2 - o / 2, 0)), s < (t = (t = t * a.scale) < n ? n : t) && (t = s), o < (i = (i = i * a.scale) < e ? e : i) && (i = o)) : i = t = 0, r.$imageWrapEl.transition(300).transform('translate3d(' + t + 'px, ' + i + 'px,0)'), r.$imageEl.transition(300).transform('translate3d(0,0,0) scale(' + a.scale + ')'))
				},
				out: function () {
					var e = this.zoom,
						t = this.params.zoom,
						i = e.gesture;
					i.$slideEl || (this.params.virtual && this.params.virtual.enabled && this.virtual ? i.$slideEl = this.$wrapperEl.children('.' + this.params.slideActiveClass) : i.$slideEl = this.slides.eq(this.activeIndex), i.$imageEl = i.$slideEl.find('img, svg, canvas, picture, .swiper-zoom-target'), i.$imageWrapEl = i.$imageEl.parent('.' + t.containerClass)),
						i.$imageEl && 0 !== i.$imageEl.length && (e.scale = 1, e.currentScale = 1, i.$imageWrapEl.transition(300).transform('translate3d(0,0,0)'), i.$imageEl.transition(300).transform('translate3d(0,0,0) scale(1)'), i.$slideEl.removeClass('' + t.zoomedSlideClass), i.$slideEl = void 0)
				},
				enable: function () {
					var e,
						t,
						i,
						s = this.zoom;
					s.enabled || (s.enabled = !0, e = !('touchstart' !== this.touchEvents.start || !y.passiveListener || !this.params.passiveListeners) && {
						passive: !0,
						capture: !1
					}, t = !y.passiveListener || {
						passive: !1,
						capture: !0
					}, i = '.' + this.params.slideClass, y.gestures ? (this.$wrapperEl.on('gesturestart', i, s.onGestureStart, e), this.$wrapperEl.on('gesturechange', i, s.onGestureChange, e), this.$wrapperEl.on('gestureend', i, s.onGestureEnd, e)) : 'touchstart' === this.touchEvents.start && (this.$wrapperEl.on(this.touchEvents.start, i, s.onGestureStart, e), this.$wrapperEl.on(this.touchEvents.move, i, s.onGestureChange, t), this.$wrapperEl.on(this.touchEvents.end, i, s.onGestureEnd, e), this.touchEvents.cancel && this.$wrapperEl.on(this.touchEvents.cancel, i, s.onGestureEnd, e)), this.$wrapperEl.on(this.touchEvents.move, '.' + this.params.zoom.containerClass, s.onTouchMove, t))
				},
				disable: function () {
					var e,
						t,
						i,
						s = this.zoom;
					s.enabled && (this.zoom.enabled = !1, e = !('touchstart' !== this.touchEvents.start || !y.passiveListener || !this.params.passiveListeners) && {
						passive: !0,
						capture: !1
					}, t = !y.passiveListener || {
						passive: !1,
						capture: !0
					}, i = '.' + this.params.slideClass, y.gestures ? (this.$wrapperEl.off('gesturestart', i, s.onGestureStart, e), this.$wrapperEl.off('gesturechange', i, s.onGestureChange, e), this.$wrapperEl.off('gestureend', i, s.onGestureEnd, e)) : 'touchstart' === this.touchEvents.start && (this.$wrapperEl.off(this.touchEvents.start, i, s.onGestureStart, e), this.$wrapperEl.off(this.touchEvents.move, i, s.onGestureChange, t), this.$wrapperEl.off(this.touchEvents.end, i, s.onGestureEnd, e), this.touchEvents.cancel && this.$wrapperEl.off(this.touchEvents.cancel, i, s.onGestureEnd, e)), this.$wrapperEl.off(this.touchEvents.move, '.' + this.params.zoom.containerClass, s.onTouchMove, t))
				}
			},
			U = {
				loadInSlide: function (e, l) {
					void 0 === l && (l = !0);
					var d,
						h = this,
						c = h.params.lazy;
					void 0 !== e && 0 !== h.slides.length && (e = (d = h.virtual && h.params.virtual.enabled ? h.$wrapperEl.children('.' + h.params.slideClass + '[data-swiper-slide-index="' + e + '"]') : h.slides.eq(e)).find('.' + c.elementClass + ':not(.' + c.loadedClass + '):not(.' + c.loadingClass + ')'), 0 !== (e = d.hasClass(c.elementClass) && !d.hasClass(c.loadedClass) && !d.hasClass(c.loadingClass) ? e.add(d[0]) : e).length && e.each(function (e, t) {
						var i = E(t);
						i.addClass(c.loadingClass);
						var s = i.attr('data-background'),
							a = i.attr('data-src'),
							n = i.attr('data-srcset'),
							r = i.attr('data-sizes'),
							o = i.parent('picture');
						h.loadImage(i[0], a || s, n, r, !1, function () {
							var e,
								t;
							null == h || !h || h && !h.params || h.destroyed || (s ? (i.css('background-image', 'url("' + s + '")'), i.removeAttr('data-background')) : (n && (i.attr('srcset', n), i.removeAttr('data-srcset')), r && (i.attr('sizes', r), i.removeAttr('data-sizes')), o.length && o.children('source').each(function (e, t) {
								t = E(t);
								t.attr('data-srcset') && (t.attr('srcset', t.attr('data-srcset')), t.removeAttr('data-srcset'))
							}), a && (i.attr('src', a), i.removeAttr('data-src'))), i.addClass(c.loadedClass).removeClass(c.loadingClass), d.find('.' + c.preloaderClass).remove(), h.params.loop && l && (t = d.attr('data-swiper-slide-index'), d.hasClass(h.params.slideDuplicateClass) ? (e = h.$wrapperEl.children('[data-swiper-slide-index="' + t + '"]:not(.' + h.params.slideDuplicateClass + ')'), h.lazy.loadInSlide(e.index(), !1)) : (t = h.$wrapperEl.children('.' + h.params.slideDuplicateClass + '[data-swiper-slide-index="' + t + '"]'), h.lazy.loadInSlide(t.index(), !1))), h.emit('lazyImageReady', d[0], i[0]), h.params.autoHeight && h.updateAutoHeight())
						}),
							h.emit('lazyImageLoad', d[0], i[0])
					}))
				},
				load: function () {
					var i = this,
						t = i.$wrapperEl,
						s = i.params,
						a = i.slides,
						e = i.activeIndex,
						n = i.virtual && s.virtual.enabled,
						r = s.lazy,
						o = s.slidesPerView;
					function l(e) {
						if (n) {
							if (t.children('.' + s.slideClass + '[data-swiper-slide-index="' + e + '"]').length) return 1
						} else if (a[e]) return 1
					}
					function d(e) {
						return n ? E(e).attr('data-swiper-slide-index') : E(e).index()
					}
					if ('auto' === o && (o = 0), i.lazy.initialImageLoaded || (i.lazy.initialImageLoaded = !0), i.params.watchSlidesVisibility) t.children('.' + s.slideVisibleClass).each(function (e, t) {
						t = n ? E(t).attr('data-swiper-slide-index') : E(t).index();
						i.lazy.loadInSlide(t)
					});
					else if (1 < o) for (var h = e; h < e + o; h += 1) l(h) && i.lazy.loadInSlide(h);
					else i.lazy.loadInSlide(e);
					if (r.loadPrevNext) if (1 < o || r.loadPrevNextAmount && 1 < r.loadPrevNextAmount) {
						for (var c = r.loadPrevNextAmount, r = o, p = Math.min(e + r + Math.max(c, r), a.length), c = Math.max(e - Math.max(r, c), 0), u = e + o; u < p; u += 1) l(u) && i.lazy.loadInSlide(u);
						for (var m = c; m < e; m += 1) l(m) && i.lazy.loadInSlide(m)
					} else {
						c = t.children('.' + s.slideNextClass);
						0 < c.length && i.lazy.loadInSlide(d(c));
						c = t.children('.' + s.slidePrevClass);
						0 < c.length && i.lazy.loadInSlide(d(c))
					}
				}
			},
			K = {
				LinearSpline: function (e, t) {
					var i,
						s,
						a,
						n,
						r;
					return this.x = e,
						this.y = t,
						this.lastIndex = e.length - 1,
						this.interpolate = function (e) {
							return e ? (r = function (e, t) {
								for (s = - 1, i = e.length; 1 < i - s;) e[a = i + s >> 1] <= t ? s = a : i = a;
								return i
							}(this.x, e), n = r - 1, (e - this.x[n]) * (this.y[r] - this.y[n]) / (this.x[r] - this.x[n]) + this.y[n]) : 0
						},
						this
				},
				getInterpolateFunction: function (e) {
					this.controller.spline || (this.controller.spline = this.params.loop ? new K.LinearSpline(this.slidesGrid, e.slidesGrid) : new K.LinearSpline(this.snapGrid, e.snapGrid))
				},
				setTranslate: function (e, t) {
					var i,
						s,
						a = this,
						n = a.controller.control;
					function r(e) {
						var t = a.rtlTranslate ? - a.translate : a.translate;
						'slide' === a.params.controller.by && (a.controller.getInterpolateFunction(e), s = - a.controller.spline.interpolate(- t)),
							s && 'container' !== a.params.controller.by || (i = (e.maxTranslate() - e.minTranslate()) / (a.maxTranslate() - a.minTranslate()), s = (t - a.minTranslate()) * i + e.minTranslate()),
							a.params.controller.inverse && (s = e.maxTranslate() - s),
							e.updateProgress(s),
							e.setTranslate(s, a),
							e.updateActiveIndex(),
							e.updateSlidesClasses()
					}
					if (Array.isArray(n)) for (var o = 0; o < n.length; o += 1) n[o] !== t && n[o] instanceof H && r(n[o]);
					else n instanceof H && t !== n && r(n)
				},
				setTransition: function (t, e) {
					var i,
						s = this,
						a = s.controller.control;
					function n(e) {
						e.setTransition(t, s),
							0 !== t && (e.transitionStart(), e.params.autoHeight && _.nextTick(function () {
								e.updateAutoHeight()
							}), e.$wrapperEl.transitionEnd(function () {
								a && (e.params.loop && 'slide' === s.params.controller.by && e.loopFix(), e.transitionEnd())
							}))
					}
					if (Array.isArray(a)) for (i = 0; i < a.length; i += 1) a[i] !== e && a[i] instanceof H && n(a[i]);
					else a instanceof H && e !== a && n(a)
				}
			},
			Q = {
				makeElFocusable: function (e) {
					return e.attr('tabIndex', '0'),
						e
				},
				makeElNotFocusable: function (e) {
					return e.attr('tabIndex', '-1'),
						e
				},
				addElRole: function (e, t) {
					return e.attr('role', t),
						e
				},
				addElLabel: function (e, t) {
					return e.attr('aria-label', t),
						e
				},
				disableEl: function (e) {
					return e.attr('aria-disabled', !0),
						e
				},
				enableEl: function (e) {
					return e.attr('aria-disabled', !1),
						e
				},
				onEnterKey: function (e) {
					var t = this.params.a11y;
					13 === e.keyCode && (e = E(e.target), this.navigation && this.navigation.$nextEl && e.is(this.navigation.$nextEl) && (this.isEnd && !this.params.loop || this.slideNext(), this.isEnd ? this.a11y.notify(t.lastSlideMessage) : this.a11y.notify(t.nextSlideMessage)), this.navigation && this.navigation.$prevEl && e.is(this.navigation.$prevEl) && (this.isBeginning && !this.params.loop || this.slidePrev(), this.isBeginning ? this.a11y.notify(t.firstSlideMessage) : this.a11y.notify(t.prevSlideMessage)), this.pagination && e.is('.' + this.params.pagination.bulletClass) && e[0].click())
				},
				notify: function (e) {
					var t = this.a11y.liveRegion;
					0 !== t.length && (t.html(''), t.html(e))
				},
				updateNavigation: function () {
					var e,
						t;
					!this.params.loop && this.navigation && (e = (t = this.navigation).$nextEl, (t = t.$prevEl) && 0 < t.length && (this.isBeginning ? (this.a11y.disableEl(t), this.a11y.makeElNotFocusable(t)) : (this.a11y.enableEl(t), this.a11y.makeElFocusable(t))), e && 0 < e.length && (this.isEnd ? (this.a11y.disableEl(e), this.a11y.makeElNotFocusable(e)) : (this.a11y.enableEl(e), this.a11y.makeElFocusable(e))))
				},
				updatePagination: function () {
					var i = this,
						s = i.params.a11y;
					i.pagination && i.params.pagination.clickable && i.pagination.bullets && i.pagination.bullets.length && i.pagination.bullets.each(function (e, t) {
						t = E(t);
						i.a11y.makeElFocusable(t),
							i.a11y.addElRole(t, 'button'),
							i.a11y.addElLabel(t, s.paginationBulletMessage.replace(/\{\{index\}\}/, t.index() + 1))
					})
				},
				init: function () {
					this.$el.append(this.a11y.liveRegion);
					var e,
						t,
						i = this.params.a11y;
					this.navigation && this.navigation.$nextEl && (e = this.navigation.$nextEl),
						this.navigation && this.navigation.$prevEl && (t = this.navigation.$prevEl),
						e && (this.a11y.makeElFocusable(e), this.a11y.addElRole(e, 'button'), this.a11y.addElLabel(e, i.nextSlideMessage), e.on('keydown', this.a11y.onEnterKey)),
						t && (this.a11y.makeElFocusable(t), this.a11y.addElRole(t, 'button'), this.a11y.addElLabel(t, i.prevSlideMessage), t.on('keydown', this.a11y.onEnterKey)),
						this.pagination && this.params.pagination.clickable && this.pagination.bullets && this.pagination.bullets.length && this.pagination.$el.on('keydown', '.' + this.params.pagination.bulletClass, this.a11y.onEnterKey)
				},
				destroy: function () {
					var e,
						t;
					this.a11y.liveRegion && 0 < this.a11y.liveRegion.length && this.a11y.liveRegion.remove(),
						this.navigation && this.navigation.$nextEl && (e = this.navigation.$nextEl),
						this.navigation && this.navigation.$prevEl && (t = this.navigation.$prevEl),
						e && e.off('keydown', this.a11y.onEnterKey),
						t && t.off('keydown', this.a11y.onEnterKey),
						this.pagination && this.params.pagination.clickable && this.pagination.bullets && this.pagination.bullets.length && this.pagination.$el.off('keydown', '.' + this.params.pagination.bulletClass, this.a11y.onEnterKey)
				}
			},
			Z = {
				init: function () {
					if (this.params.history) {
						if (!j.history || !j.history.pushState) return this.params.history.enabled = !1,
							void (this.params.hashNavigation.enabled = !0);
						var e = this.history;
						e.initialized = !0,
							e.paths = Z.getPathValues(),
							(e.paths.key || e.paths.value) && (e.scrollToSlide(0, e.paths.value, this.params.runCallbacksOnInit), this.params.history.replaceState || j.addEventListener('popstate', this.history.setHistoryPopState))
					}
				},
				destroy: function () {
					this.params.history.replaceState || j.removeEventListener('popstate', this.history.setHistoryPopState)
				},
				setHistoryPopState: function () {
					this.history.paths = Z.getPathValues(),
						this.history.scrollToSlide(this.params.speed, this.history.paths.value, !1)
				},
				getPathValues: function () {
					var e = j.location.pathname.slice(1).split('/').filter(function (e) {
						return '' !== e
					}),
						t = e.length;
					return {
						key: e[t - 2],
						value: e[t - 1]
					}
				},
				setHistory: function (e, t) {
					this.history.initialized && this.params.history.enabled && (t = this.slides.eq(t), t = Z.slugify(t.attr('data-history')), j.location.pathname.includes(e) || (t = e + '/' + t), (e = j.history.state) && e.value === t || (this.params.history.replaceState ? j.history.replaceState({
						value: t
					}, null, t) : j.history.pushState({
						value: t
					}, null, t)))
				},
				slugify: function (e) {
					return e.toString().replace(/\s+/g, '-').replace(/[^\w-]+/g, '').replace(/--+/g, '-').replace(/^-+/, '').replace(/-+$/, '')
				},
				scrollToSlide: function (e, t, i) {
					if (t) for (var s = 0, a = this.slides.length; s < a; s += 1) {
						var n = this.slides.eq(s);
						Z.slugify(n.attr('data-history')) !== t || n.hasClass(this.params.slideDuplicateClass) || (n = n.index(), this.slideTo(n, e, i))
					} else this.slideTo(0, e, i)
				}
			},
			J = {
				onHashCange: function () {
					this.emit('hashChange');
					var e = c.location.hash.replace('#', '');
					e === this.slides.eq(this.activeIndex).attr('data-hash') || void 0 !== (e = this.$wrapperEl.children('.' + this.params.slideClass + '[data-hash="' + e + '"]').index()) && this.slideTo(e)
				},
				setHash: function () {
					var e;
					this.hashNavigation.initialized && this.params.hashNavigation.enabled && (this.params.hashNavigation.replaceState && j.history && j.history.replaceState ? j.history.replaceState(null, null, '#' + this.slides.eq(this.activeIndex).attr('data-hash') || '') : (e = (e = this.slides.eq(this.activeIndex)).attr('data-hash') || e.attr('data-history'), c.location.hash = e || ''), this.emit('hashSet'))
				},
				init: function () {
					if (!(!this.params.hashNavigation.enabled || this.params.history && this.params.history.enabled)) {
						this.hashNavigation.initialized = !0;
						var e = c.location.hash.replace('#', '');
						if (e) for (var t = 0, i = this.slides.length; t < i; t += 1) {
							var s = this.slides.eq(t);
							(s.attr('data-hash') || s.attr('data-history')) !== e || s.hasClass(this.params.slideDuplicateClass) || (s = s.index(), this.slideTo(s, 0, this.params.runCallbacksOnInit, !0))
						}
						this.params.hashNavigation.watchState && E(j).on('hashchange', this.hashNavigation.onHashCange)
					}
				},
				destroy: function () {
					this.params.hashNavigation.watchState && E(j).off('hashchange', this.hashNavigation.onHashCange)
				}
			},
			ee = {
				run: function () {
					var e = this,
						t = e.slides.eq(e.activeIndex),
						i = e.params.autoplay.delay;
					t.attr('data-swiper-autoplay') && (i = t.attr('data-swiper-autoplay') || e.params.autoplay.delay),
						clearTimeout(e.autoplay.timeout),
						e.autoplay.timeout = _.nextTick(function () {
							e.params.autoplay.reverseDirection ? e.params.loop ? (e.loopFix(), e.slidePrev(e.params.speed, !0, !0), e.emit('autoplay')) : e.isBeginning ? e.params.autoplay.stopOnLastSlide ? e.autoplay.stop() : (e.slideTo(e.slides.length - 1, e.params.speed, !0, !0), e.emit('autoplay')) : (e.slidePrev(e.params.speed, !0, !0), e.emit('autoplay')) : e.params.loop ? (e.loopFix(), e.slideNext(e.params.speed, !0, !0), e.emit('autoplay')) : e.isEnd ? e.params.autoplay.stopOnLastSlide ? e.autoplay.stop() : (e.slideTo(0, e.params.speed, !0, !0), e.emit('autoplay')) : (e.slideNext(e.params.speed, !0, !0), e.emit('autoplay')),
								e.params.cssMode && e.autoplay.running && e.autoplay.run()
						}, i)
				},
				start: function () {
					return void 0 === this.autoplay.timeout && !this.autoplay.running && (this.autoplay.running = !0, this.emit('autoplayStart'), this.autoplay.run(), !0)
				},
				stop: function () {
					return !!this.autoplay.running && void 0 !== this.autoplay.timeout && (this.autoplay.timeout && (clearTimeout(this.autoplay.timeout), this.autoplay.timeout = void 0), this.autoplay.running = !1, this.emit('autoplayStop'), !0)
				},
				pause: function (e) {
					this.autoplay.running && (this.autoplay.paused || (this.autoplay.timeout && clearTimeout(this.autoplay.timeout), this.autoplay.paused = !0, 0 !== e && this.params.autoplay.waitForTransition ? (this.$wrapperEl[0].addEventListener('transitionend', this.autoplay.onTransitionEnd), this.$wrapperEl[0].addEventListener('webkitTransitionEnd', this.autoplay.onTransitionEnd)) : (this.autoplay.paused = !1, this.autoplay.run())))
				}
			},
			te = {
				setTranslate: function () {
					for (var e = this.slides, t = 0; t < e.length; t += 1) {
						var i = this.slides.eq(t),
							s = - i[0].swiperSlideOffset;
						this.params.virtualTranslate || (s -= this.translate);
						var a = 0;
						this.isHorizontal() || (a = s, s = 0);
						var n = this.params.fadeEffect.crossFade ? Math.max(1 - Math.abs(i[0].progress), 0) : 1 + Math.min(Math.max(i[0].progress, - 1), 0);
						i.css({
							opacity: n
						}).transform('translate3d(' + s + 'px, ' + a + 'px, 0px)')
					}
				},
				setTransition: function (e) {
					var i,
						s = this,
						t = s.slides,
						a = s.$wrapperEl;
					t.transition(e),
						s.params.virtualTranslate && 0 !== e && (i = !1, t.transitionEnd(function () {
							if (!i && s && !s.destroyed) {
								i = !0,
									s.animating = !1;
								for (var e = [
									'webkitTransitionEnd',
									'transitionend'
								], t = 0; t < e.length; t += 1) a.trigger(e[t])
							}
						}))
				}
			},
			ie = {
				setTranslate: function () {
					var e,
						t = this.$el,
						i = this.$wrapperEl,
						s = this.slides,
						a = this.width,
						n = this.height,
						r = this.rtlTranslate,
						o = this.size,
						l = this.params.cubeEffect,
						d = this.isHorizontal(),
						h = this.virtual && this.params.virtual.enabled,
						c = 0;
					l.shadow && (d ? (0 === (e = i.find('.swiper-cube-shadow')).length && (e = E('<div class="swiper-cube-shadow"></div>'), i.append(e)), e.css({
						height: a + 'px'
					})) : 0 === (e = t.find('.swiper-cube-shadow')).length && (e = E('<div class="swiper-cube-shadow"></div>'), t.append(e)));
					for (var p, u = 0; u < s.length; u += 1) {
						var m = s.eq(u),
							f = u,
							v = 90 * (f = h ? parseInt(m.attr('data-swiper-slide-index'), 10) : f),
							g = Math.floor(v / 360);
						r && (v = - v, g = Math.floor(- v / 360));
						var b = Math.max(Math.min(m[0].progress, 1), - 1),
							w = 0,
							y = 0,
							x = 0;
						f % 4 == 0 ? (w = 4 * - g * o, x = 0) : (f - 1) % 4 == 0 ? (w = 0, x = 4 * - g * o) : (f - 2) % 4 == 0 ? (w = o + 4 * g * o, x = o) : (f - 3) % 4 == 0 && (w = - o, x = 3 * o + 4 * o * g),
							r && (w = - w),
							d || (y = w, w = 0),
							b <= 1 && - 1 < b && (c = r ? 90 * - f - 90 * b : 90 * f + 90 * b),
							m.transform('rotateX(' + (d ? 0 : - v) + 'deg) rotateY(' + (d ? v : 0) + 'deg) translate3d(' + w + 'px, ' + y + 'px, ' + x + 'px)'),
							l.slideShadows && (y = d ? m.find('.swiper-slide-shadow-left') : m.find('.swiper-slide-shadow-top'), x = d ? m.find('.swiper-slide-shadow-right') : m.find('.swiper-slide-shadow-bottom'), 0 === y.length && (y = E('<div class="swiper-slide-shadow-' + (d ? 'left' : 'top') + '"></div>'), m.append(y)), 0 === x.length && (x = E('<div class="swiper-slide-shadow-' + (d ? 'right' : 'bottom') + '"></div>'), m.append(x)), y.length && (y[0].style.opacity = Math.max(- b, 0)), x.length && (x[0].style.opacity = Math.max(b, 0)))
					}
					i.css({
						'-webkit-transform-origin': '50% 50% -' + o / 2 + 'px',
						'-moz-transform-origin': '50% 50% -' + o / 2 + 'px',
						'-ms-transform-origin': '50% 50% -' + o / 2 + 'px',
						'transform-origin': '50% 50% -' + o / 2 + 'px'
					}),
						l.shadow && (d ? e.transform('translate3d(0px, ' + (a / 2 + l.shadowOffset) + 'px, ' + - a / 2 + 'px) rotateX(90deg) rotateZ(0deg) scale(' + l.shadowScale + ')') : (p = Math.abs(c) - 90 * Math.floor(Math.abs(c) / 90), t = 1.5 - (Math.sin(2 * p * Math.PI / 360) / 2 + Math.cos(2 * p * Math.PI / 360) / 2), a = l.shadowScale, p = l.shadowScale / t, t = l.shadowOffset, e.transform('scale3d(' + a + ', 1, ' + p + ') translate3d(0px, ' + (n / 2 + t) + 'px, ' + - n / 2 / p + 'px) rotateX(-90deg)'))),
						i.transform('translate3d(0px,0,' + (B.isSafari || B.isUiWebView ? - o / 2 : 0) + 'px) rotateX(' + (this.isHorizontal() ? 0 : c) + 'deg) rotateY(' + (this.isHorizontal() ? - c : 0) + 'deg)')
				},
				setTransition: function (e) {
					var t = this.$el;
					this.slides.transition(e).find('.swiper-slide-shadow-top, .swiper-slide-shadow-right, .swiper-slide-shadow-bottom, .swiper-slide-shadow-left').transition(e),
						this.params.cubeEffect.shadow && !this.isHorizontal() && t.find('.swiper-cube-shadow').transition(e)
				}
			},
			se = {
				setTranslate: function () {
					for (var e = this.slides, t = this.rtlTranslate, i = 0; i < e.length; i += 1) {
						var s,
							a,
							n = e.eq(i),
							r = n[0].progress,
							o = - 180 * (r = this.params.flipEffect.limitRotation ? Math.max(Math.min(n[0].progress, 1), - 1) : r),
							l = 0,
							d = - n[0].swiperSlideOffset,
							h = 0;
						this.isHorizontal() ? t && (o = - o) : (h = d, l = - o, o = d = 0),
							n[0].style.zIndex = - Math.abs(Math.round(r)) + e.length,
							this.params.flipEffect.slideShadows && (s = this.isHorizontal() ? n.find('.swiper-slide-shadow-left') : n.find('.swiper-slide-shadow-top'), a = this.isHorizontal() ? n.find('.swiper-slide-shadow-right') : n.find('.swiper-slide-shadow-bottom'), 0 === s.length && (s = E('<div class="swiper-slide-shadow-' + (this.isHorizontal() ? 'left' : 'top') + '"></div>'), n.append(s)), 0 === a.length && (a = E('<div class="swiper-slide-shadow-' + (this.isHorizontal() ? 'right' : 'bottom') + '"></div>'), n.append(a)), s.length && (s[0].style.opacity = Math.max(- r, 0)), a.length && (a[0].style.opacity = Math.max(r, 0))),
							n.transform('translate3d(' + d + 'px, ' + h + 'px, 0px) rotateX(' + l + 'deg) rotateY(' + o + 'deg)')
					}
				},
				setTransition: function (e) {
					var i,
						s = this,
						t = s.slides,
						a = s.activeIndex,
						n = s.$wrapperEl;
					t.transition(e).find('.swiper-slide-shadow-top, .swiper-slide-shadow-right, .swiper-slide-shadow-bottom, .swiper-slide-shadow-left').transition(e),
						s.params.virtualTranslate && 0 !== e && (i = !1, t.eq(a).transitionEnd(function () {
							if (!i && s && !s.destroyed) {
								i = !0,
									s.animating = !1;
								for (var e = [
									'webkitTransitionEnd',
									'transitionend'
								], t = 0; t < e.length; t += 1) n.trigger(e[t])
							}
						}))
				}
			},
			ae = {
				setTranslate: function () {
					for (var e = this.width, t = this.height, i = this.slides, s = this.$wrapperEl, a = this.slidesSizesGrid, n = this.params.coverflowEffect, r = this.isHorizontal(), o = this.translate, l = r ? e / 2 - o : t / 2 - o, d = r ? n.rotate : - n.rotate, h = n.depth, c = 0, p = i.length; c < p; c += 1) {
						var u = i.eq(c),
							m = a[c],
							f = (l - u[0].swiperSlideOffset - m / 2) / m * n.modifier,
							v = r ? d * f : 0,
							g = r ? 0 : d * f,
							b = - h * Math.abs(f),
							w = n.stretch;
						'string' == typeof w && - 1 !== w.indexOf('%') && (w = parseFloat(n.stretch) / 100 * m);
						m = r ? 0 : w * f,
							w = r ? w * f : 0;
						Math.abs(w) < 0.001 && (w = 0),
							Math.abs(m) < 0.001 && (m = 0),
							Math.abs(b) < 0.001 && (b = 0),
							Math.abs(v) < 0.001 && (v = 0),
							Math.abs(g) < 0.001 && (g = 0),
							u.transform('translate3d(' + w + 'px,' + m + 'px,' + b + 'px)  rotateX(' + g + 'deg) rotateY(' + v + 'deg)'),
							u[0].style.zIndex = 1 - Math.abs(Math.round(f)),
							n.slideShadows && (g = r ? u.find('.swiper-slide-shadow-left') : u.find('.swiper-slide-shadow-top'), v = r ? u.find('.swiper-slide-shadow-right') : u.find('.swiper-slide-shadow-bottom'), 0 === g.length && (g = E('<div class="swiper-slide-shadow-' + (r ? 'left' : 'top') + '"></div>'), u.append(g)), 0 === v.length && (v = E('<div class="swiper-slide-shadow-' + (r ? 'right' : 'bottom') + '"></div>'), u.append(v)), g.length && (g[0].style.opacity = 0 < f ? f : 0), v.length && (v[0].style.opacity = 0 < - f ? - f : 0))
					} (y.pointerEvents || y.prefixedPointerEvents) && (s[0].style.perspectiveOrigin = l + 'px 50%')
				},
				setTransition: function (e) {
					this.slides.transition(e).find('.swiper-slide-shadow-top, .swiper-slide-shadow-right, .swiper-slide-shadow-bottom, .swiper-slide-shadow-left').transition(e)
				}
			},
			ne = {
				init: function () {
					var e = this.params.thumbs,
						t = this.constructor;
					e.swiper instanceof t ? (this.thumbs.swiper = e.swiper, _.extend(this.thumbs.swiper.originalParams, {
						watchSlidesProgress: !0,
						slideToClickedSlide: !1
					}), _.extend(this.thumbs.swiper.params, {
						watchSlidesProgress: !0,
						slideToClickedSlide: !1
					})) : _.isObject(e.swiper) && (this.thumbs.swiper = new t(_.extend({
					}, e.swiper, {
						watchSlidesVisibility: !0,
						watchSlidesProgress: !0,
						slideToClickedSlide: !1
					})), this.thumbs.swiperCreated = !0),
						this.thumbs.swiper.$el.addClass(this.params.thumbs.thumbsContainerClass),
						this.thumbs.swiper.on('tap', this.thumbs.onThumbClick)
				},
				onThumbClick: function () {
					var e,
						t,
						i,
						s = this.thumbs.swiper;
					s && (t = s.clickedIndex, (e = s.clickedSlide) && E(e).hasClass(this.params.thumbs.slideThumbActiveClass) || null == t || (i = s.params.loop ? parseInt(E(s.clickedSlide).attr('data-swiper-slide-index'), 10) : t, this.params.loop && (e = this.activeIndex, this.slides.eq(e).hasClass(this.params.slideDuplicateClass) && (this.loopFix(), this._clientLeft = this.$wrapperEl[0].clientLeft, e = this.activeIndex), s = this.slides.eq(e).prevAll('[data-swiper-slide-index="' + i + '"]').eq(0).index(), t = this.slides.eq(e).nextAll('[data-swiper-slide-index="' + i + '"]').eq(0).index(), i = void 0 === s || void 0 !== t && t - e < e - s ? t : s), this.slideTo(i)))
				},
				update: function (e) {
					var t = this.thumbs.swiper;
					if (t) {
						var i,
							s,
							a,
							n = 'auto' === t.params.slidesPerView ? t.slidesPerViewDynamic() : t.params.slidesPerView,
							r = this.params.thumbs.autoScrollOffset,
							o = r && !t.params.loop;
						this.realIndex === t.realIndex && !o || (i = t.activeIndex, a = t.params.loop ? (t.slides.eq(i).hasClass(t.params.slideDuplicateClass) && (t.loopFix(), t._clientLeft = t.$wrapperEl[0].clientLeft, i = t.activeIndex), a = t.slides.eq(i).prevAll('[data-swiper-slide-index="' + this.realIndex + '"]').eq(0).index(), s = t.slides.eq(i).nextAll('[data-swiper-slide-index="' + this.realIndex + '"]').eq(0).index(), s = void 0 === a ? s : void 0 === s ? a : s - i == i - a ? i : s - i < i - a ? s : a, this.activeIndex > this.previousIndex ? 'next' : 'prev') : (s = this.realIndex) > this.previousIndex ? 'next' : 'prev', o && (s += 'next' === a ? r : - 1 * r), t.visibleSlidesIndexes && t.visibleSlidesIndexes.indexOf(s) < 0 && (t.params.centeredSlides ? s = i < s ? s - Math.floor(n / 2) + 1 : s + Math.floor(n / 2) - 1 : i < s && (s = s - n + 1), t.slideTo(s, e ? 0 : void 0)));
						var l = 1,
							d = this.params.thumbs.slideThumbActiveClass;
						if (1 < this.params.slidesPerView && !this.params.centeredSlides && (l = this.params.slidesPerView), this.params.thumbs.multipleActiveThumbs || (l = 1), l = Math.floor(l), t.slides.removeClass(d), t.params.loop || t.params.virtual && t.params.virtual.enabled) for (var h = 0; h < l; h += 1) t.$wrapperEl.children('[data-swiper-slide-index="' + (this.realIndex + h) + '"]').addClass(d);
						else for (var c = 0; c < l; c += 1) t.slides.eq(this.realIndex + c).addClass(d)
					}
				}
			},
			S = [
				T,
				C,
				M,
				z,
				$,
				i,
				S,
				{
					name: 'mousewheel',
					params: {
						mousewheel: {
							enabled: !1,
							releaseOnEdges: !1,
							invert: !1,
							forceToAxis: !1,
							sensitivity: 1,
							eventsTarged: 'container'
						}
					},
					create: function () {
						_.extend(this, {
							mousewheel: {
								enabled: !1,
								enable: F.enable.bind(this),
								disable: F.disable.bind(this),
								handle: F.handle.bind(this),
								handleMouseEnter: F.handleMouseEnter.bind(this),
								handleMouseLeave: F.handleMouseLeave.bind(this),
								animateSlider: F.animateSlider.bind(this),
								releaseScroll: F.releaseScroll.bind(this),
								lastScrollTime: _.now(),
								lastEventBeforeSnap: void 0,
								recentWheelEvents: [
								]
							}
						})
					},
					on: {
						init: function () {
							!this.params.mousewheel.enabled && this.params.cssMode && this.mousewheel.disable(),
								this.params.mousewheel.enabled && this.mousewheel.enable()
						},
						destroy: function () {
							this.params.cssMode && this.mousewheel.enable(),
								this.mousewheel.enabled && this.mousewheel.disable()
						}
					}
				},
				{
					name: 'navigation',
					params: {
						navigation: {
							nextEl: null,
							prevEl: null,
							hideOnClick: !1,
							disabledClass: 'swiper-button-disabled',
							hiddenClass: 'swiper-button-hidden',
							lockClass: 'swiper-button-lock'
						}
					},
					create: function () {
						_.extend(this, {
							navigation: {
								init: X.init.bind(this),
								update: X.update.bind(this),
								destroy: X.destroy.bind(this),
								onNextClick: X.onNextClick.bind(this),
								onPrevClick: X.onPrevClick.bind(this)
							}
						})
					},
					on: {
						init: function () {
							this.navigation.init(),
								this.navigation.update()
						},
						toEdge: function () {
							this.navigation.update()
						},
						fromEdge: function () {
							this.navigation.update()
						},
						destroy: function () {
							this.navigation.destroy()
						},
						click: function (e) {
							var t,
								i = this.navigation,
								s = i.$nextEl,
								i = i.$prevEl;
							!this.params.navigation.hideOnClick || E(e.target).is(i) || E(e.target).is(s) || (s ? t = s.hasClass(this.params.navigation.hiddenClass) : i && (t = i.hasClass(this.params.navigation.hiddenClass)), !0 === t ? this.emit('navigationShow', this) : this.emit('navigationHide', this), s && s.toggleClass(this.params.navigation.hiddenClass), i && i.toggleClass(this.params.navigation.hiddenClass))
						}
					}
				},
				{
					name: 'pagination',
					params: {
						pagination: {
							el: null,
							bulletElement: 'span',
							clickable: !1,
							hideOnClick: !1,
							renderBullet: null,
							renderProgressbar: null,
							renderFraction: null,
							renderCustom: null,
							progressbarOpposite: !1,
							type: 'bullets',
							dynamicBullets: !1,
							dynamicMainBullets: 1,
							formatFractionCurrent: function (e) {
								return e
							},
							formatFractionTotal: function (e) {
								return e
							},
							bulletClass: 'swiper-pagination-bullet',
							bulletActiveClass: 'swiper-pagination-bullet-active',
							modifierClass: 'swiper-pagination-',
							currentClass: 'swiper-pagination-current',
							totalClass: 'swiper-pagination-total',
							hiddenClass: 'swiper-pagination-hidden',
							progressbarFillClass: 'swiper-pagination-progressbar-fill',
							progressbarOppositeClass: 'swiper-pagination-progressbar-opposite',
							clickableClass: 'swiper-pagination-clickable',
							lockClass: 'swiper-pagination-lock'
						}
					},
					create: function () {
						_.extend(this, {
							pagination: {
								init: Y.init.bind(this),
								render: Y.render.bind(this),
								update: Y.update.bind(this),
								destroy: Y.destroy.bind(this),
								dynamicBulletIndex: 0
							}
						})
					},
					on: {
						init: function () {
							this.pagination.init(),
								this.pagination.render(),
								this.pagination.update()
						},
						activeIndexChange: function () {
							!this.params.loop && void 0 !== this.snapIndex || this.pagination.update()
						},
						snapIndexChange: function () {
							this.params.loop || this.pagination.update()
						},
						slidesLengthChange: function () {
							this.params.loop && (this.pagination.render(), this.pagination.update())
						},
						snapGridLengthChange: function () {
							this.params.loop || (this.pagination.render(), this.pagination.update())
						},
						destroy: function () {
							this.pagination.destroy()
						},
						click: function (e) {
							this.params.pagination.el && this.params.pagination.hideOnClick && 0 < this.pagination.$el.length && !E(e.target).hasClass(this.params.pagination.bulletClass) && (!0 === this.pagination.$el.hasClass(this.params.pagination.hiddenClass) ? this.emit('paginationShow', this) : this.emit('paginationHide', this), this.pagination.$el.toggleClass(this.params.pagination.hiddenClass))
						}
					}
				},
				{
					name: 'scrollbar',
					params: {
						scrollbar: {
							el: null,
							dragSize: 'auto',
							hide: !1,
							draggable: !1,
							snapOnRelease: !0,
							lockClass: 'swiper-scrollbar-lock',
							dragClass: 'swiper-scrollbar-drag'
						}
					},
					create: function () {
						_.extend(this, {
							scrollbar: {
								init: W.init.bind(this),
								destroy: W.destroy.bind(this),
								updateSize: W.updateSize.bind(this),
								setTranslate: W.setTranslate.bind(this),
								setTransition: W.setTransition.bind(this),
								enableDraggable: W.enableDraggable.bind(this),
								disableDraggable: W.disableDraggable.bind(this),
								setDragPosition: W.setDragPosition.bind(this),
								getPointerPosition: W.getPointerPosition.bind(this),
								onDragStart: W.onDragStart.bind(this),
								onDragMove: W.onDragMove.bind(this),
								onDragEnd: W.onDragEnd.bind(this),
								isTouched: !1,
								timeout: null,
								dragTimeout: null
							}
						})
					},
					on: {
						init: function () {
							this.scrollbar.init(),
								this.scrollbar.updateSize(),
								this.scrollbar.setTranslate()
						},
						update: function () {
							this.scrollbar.updateSize()
						},
						resize: function () {
							this.scrollbar.updateSize()
						},
						observerUpdate: function () {
							this.scrollbar.updateSize()
						},
						setTranslate: function () {
							this.scrollbar.setTranslate()
						},
						setTransition: function (e) {
							this.scrollbar.setTransition(e)
						},
						destroy: function () {
							this.scrollbar.destroy()
						}
					}
				},
				{
					name: 'parallax',
					params: {
						parallax: {
							enabled: !1
						}
					},
					create: function () {
						_.extend(this, {
							parallax: {
								setTransform: R.setTransform.bind(this),
								setTranslate: R.setTranslate.bind(this),
								setTransition: R.setTransition.bind(this)
							}
						})
					},
					on: {
						beforeInit: function () {
							this.params.parallax.enabled && (this.params.watchSlidesProgress = !0, this.originalParams.watchSlidesProgress = !0)
						},
						init: function () {
							this.params.parallax.enabled && this.parallax.setTranslate()
						},
						setTranslate: function () {
							this.params.parallax.enabled && this.parallax.setTranslate()
						},
						setTransition: function (e) {
							this.params.parallax.enabled && this.parallax.setTransition(e)
						}
					}
				},
				{
					name: 'zoom',
					params: {
						zoom: {
							enabled: !1,
							maxRatio: 3,
							minRatio: 1,
							toggle: !0,
							containerClass: 'swiper-zoom-container',
							zoomedSlideClass: 'swiper-slide-zoomed'
						}
					},
					create: function () {
						var s = this,
							t = {
								enabled: !1,
								scale: 1,
								currentScale: 1,
								isScaling: !1,
								gesture: {
									$slideEl: void 0,
									slideWidth: void 0,
									slideHeight: void 0,
									$imageEl: void 0,
									$imageWrapEl: void 0,
									maxRatio: 3
								},
								image: {
									isTouched: void 0,
									isMoved: void 0,
									currentX: void 0,
									currentY: void 0,
									minX: void 0,
									minY: void 0,
									maxX: void 0,
									maxY: void 0,
									width: void 0,
									height: void 0,
									startX: void 0,
									startY: void 0,
									touchesStart: {
									},
									touchesCurrent: {
									}
								},
								velocity: {
									x: void 0,
									y: void 0,
									prevPositionX: void 0,
									prevPositionY: void 0,
									prevTime: void 0
								}
							};
						'onGestureStart onGestureChange onGestureEnd onTouchStart onTouchMove onTouchEnd onTransitionEnd toggle enable disable in out'.split(' ').forEach(function (e) {
							t[e] = q[e].bind(s)
						}),
							_.extend(s, {
								zoom: t
							});
						var a = 1;
						Object.defineProperty(s.zoom, 'scale', {
							get: function () {
								return a
							},
							set: function (e) {
								var t,
									i;
								a !== e && (t = s.zoom.gesture.$imageEl ? s.zoom.gesture.$imageEl[0] : void 0, i = s.zoom.gesture.$slideEl ? s.zoom.gesture.$slideEl[0] : void 0, s.emit('zoomChange', e, t, i)),
									a = e
							}
						})
					},
					on: {
						init: function () {
							this.params.zoom.enabled && this.zoom.enable()
						},
						destroy: function () {
							this.zoom.disable()
						},
						touchStart: function (e) {
							this.zoom.enabled && this.zoom.onTouchStart(e)
						},
						touchEnd: function (e) {
							this.zoom.enabled && this.zoom.onTouchEnd(e)
						},
						doubleTap: function (e) {
							this.params.zoom.enabled && this.zoom.enabled && this.params.zoom.toggle && this.zoom.toggle(e)
						},
						transitionEnd: function () {
							this.zoom.enabled && this.params.zoom.enabled && this.zoom.onTransitionEnd()
						},
						slideChange: function () {
							this.zoom.enabled && this.params.zoom.enabled && this.params.cssMode && this.zoom.onTransitionEnd()
						}
					}
				},
				{
					name: 'lazy',
					params: {
						lazy: {
							enabled: !1,
							loadPrevNext: !1,
							loadPrevNextAmount: 1,
							loadOnTransitionStart: !1,
							elementClass: 'swiper-lazy',
							loadingClass: 'swiper-lazy-loading',
							loadedClass: 'swiper-lazy-loaded',
							preloaderClass: 'swiper-lazy-preloader'
						}
					},
					create: function () {
						_.extend(this, {
							lazy: {
								initialImageLoaded: !1,
								load: U.load.bind(this),
								loadInSlide: U.loadInSlide.bind(this)
							}
						})
					},
					on: {
						beforeInit: function () {
							this.params.lazy.enabled && this.params.preloadImages && (this.params.preloadImages = !1)
						},
						init: function () {
							this.params.lazy.enabled && !this.params.loop && 0 === this.params.initialSlide && this.lazy.load()
						},
						scroll: function () {
							this.params.freeMode && !this.params.freeModeSticky && this.lazy.load()
						},
						resize: function () {
							this.params.lazy.enabled && this.lazy.load()
						},
						scrollbarDragMove: function () {
							this.params.lazy.enabled && this.lazy.load()
						},
						transitionStart: function () {
							this.params.lazy.enabled && (this.params.lazy.loadOnTransitionStart || !this.params.lazy.loadOnTransitionStart && !this.lazy.initialImageLoaded) && this.lazy.load()
						},
						transitionEnd: function () {
							this.params.lazy.enabled && !this.params.lazy.loadOnTransitionStart && this.lazy.load()
						},
						slideChange: function () {
							this.params.lazy.enabled && this.params.cssMode && this.lazy.load()
						}
					}
				},
				{
					name: 'controller',
					params: {
						controller: {
							control: void 0,
							inverse: !1,
							by: 'slide'
						}
					},
					create: function () {
						_.extend(this, {
							controller: {
								control: this.params.controller.control,
								getInterpolateFunction: K.getInterpolateFunction.bind(this),
								setTranslate: K.setTranslate.bind(this),
								setTransition: K.setTransition.bind(this)
							}
						})
					},
					on: {
						update: function () {
							this.controller.control && this.controller.spline && (this.controller.spline = void 0, delete this.controller.spline)
						},
						resize: function () {
							this.controller.control && this.controller.spline && (this.controller.spline = void 0, delete this.controller.spline)
						},
						observerUpdate: function () {
							this.controller.control && this.controller.spline && (this.controller.spline = void 0, delete this.controller.spline)
						},
						setTranslate: function (e, t) {
							this.controller.control && this.controller.setTranslate(e, t)
						},
						setTransition: function (e, t) {
							this.controller.control && this.controller.setTransition(e, t)
						}
					}
				},
				{
					name: 'a11y',
					params: {
						a11y: {
							enabled: !0,
							notificationClass: 'swiper-notification',
							prevSlideMessage: 'Previous slide',
							nextSlideMessage: 'Next slide',
							firstSlideMessage: 'This is the first slide',
							lastSlideMessage: 'This is the last slide',
							paginationBulletMessage: 'Go to slide {{index}}'
						}
					},
					create: function () {
						var t = this;
						_.extend(t, {
							a11y: {
								liveRegion: E('<span class="' + t.params.a11y.notificationClass + '" aria-live="assertive" aria-atomic="true"></span>')
							}
						}),
							Object.keys(Q).forEach(function (e) {
								t.a11y[e] = Q[e].bind(t)
							})
					},
					on: {
						init: function () {
							this.params.a11y.enabled && (this.a11y.init(), this.a11y.updateNavigation())
						},
						toEdge: function () {
							this.params.a11y.enabled && this.a11y.updateNavigation()
						},
						fromEdge: function () {
							this.params.a11y.enabled && this.a11y.updateNavigation()
						},
						paginationUpdate: function () {
							this.params.a11y.enabled && this.a11y.updatePagination()
						},
						destroy: function () {
							this.params.a11y.enabled && this.a11y.destroy()
						}
					}
				},
				{
					name: 'history',
					params: {
						history: {
							enabled: !1,
							replaceState: !1,
							key: 'slides'
						}
					},
					create: function () {
						_.extend(this, {
							history: {
								init: Z.init.bind(this),
								setHistory: Z.setHistory.bind(this),
								setHistoryPopState: Z.setHistoryPopState.bind(this),
								scrollToSlide: Z.scrollToSlide.bind(this),
								destroy: Z.destroy.bind(this)
							}
						})
					},
					on: {
						init: function () {
							this.params.history.enabled && this.history.init()
						},
						destroy: function () {
							this.params.history.enabled && this.history.destroy()
						},
						transitionEnd: function () {
							this.history.initialized && this.history.setHistory(this.params.history.key, this.activeIndex)
						},
						slideChange: function () {
							this.history.initialized && this.params.cssMode && this.history.setHistory(this.params.history.key, this.activeIndex)
						}
					}
				},
				{
					name: 'hash-navigation',
					params: {
						hashNavigation: {
							enabled: !1,
							replaceState: !1,
							watchState: !1
						}
					},
					create: function () {
						_.extend(this, {
							hashNavigation: {
								initialized: !1,
								init: J.init.bind(this),
								destroy: J.destroy.bind(this),
								setHash: J.setHash.bind(this),
								onHashCange: J.onHashCange.bind(this)
							}
						})
					},
					on: {
						init: function () {
							this.params.hashNavigation.enabled && this.hashNavigation.init()
						},
						destroy: function () {
							this.params.hashNavigation.enabled && this.hashNavigation.destroy()
						},
						transitionEnd: function () {
							this.hashNavigation.initialized && this.hashNavigation.setHash()
						},
						slideChange: function () {
							this.hashNavigation.initialized && this.params.cssMode && this.hashNavigation.setHash()
						}
					}
				},
				{
					name: 'autoplay',
					params: {
						autoplay: {
							enabled: !1,
							delay: 3000,
							waitForTransition: !0,
							disableOnInteraction: !0,
							stopOnLastSlide: !1,
							reverseDirection: !1
						}
					},
					create: function () {
						var t = this;
						_.extend(t, {
							autoplay: {
								running: !1,
								paused: !1,
								run: ee.run.bind(t),
								start: ee.start.bind(t),
								stop: ee.stop.bind(t),
								pause: ee.pause.bind(t),
								onVisibilityChange: function () {
									'hidden' === document.visibilityState && t.autoplay.running && t.autoplay.pause(),
										'visible' === document.visibilityState && t.autoplay.paused && (t.autoplay.run(), t.autoplay.paused = !1)
								},
								onTransitionEnd: function (e) {
									t && !t.destroyed && t.$wrapperEl && e.target === this && (t.$wrapperEl[0].removeEventListener('transitionend', t.autoplay.onTransitionEnd), t.$wrapperEl[0].removeEventListener('webkitTransitionEnd', t.autoplay.onTransitionEnd), t.autoplay.paused = !1, t.autoplay.running ? t.autoplay.run() : t.autoplay.stop())
								}
							}
						})
					},
					on: {
						init: function () {
							this.params.autoplay.enabled && (this.autoplay.start(), document.addEventListener('visibilitychange', this.autoplay.onVisibilityChange))
						},
						beforeTransitionStart: function (e, t) {
							this.autoplay.running && (t || !this.params.autoplay.disableOnInteraction ? this.autoplay.pause(e) : this.autoplay.stop())
						},
						sliderFirstMove: function () {
							this.autoplay.running && (this.params.autoplay.disableOnInteraction ? this.autoplay.stop() : this.autoplay.pause())
						},
						touchEnd: function () {
							this.params.cssMode && this.autoplay.paused && !this.params.autoplay.disableOnInteraction && this.autoplay.run()
						},
						destroy: function () {
							this.autoplay.running && this.autoplay.stop(),
								document.removeEventListener('visibilitychange', this.autoplay.onVisibilityChange)
						}
					}
				},
				{
					name: 'effect-fade',
					params: {
						fadeEffect: {
							crossFade: !1
						}
					},
					create: function () {
						_.extend(this, {
							fadeEffect: {
								setTranslate: te.setTranslate.bind(this),
								setTransition: te.setTransition.bind(this)
							}
						})
					},
					on: {
						beforeInit: function () {
							var e;
							'fade' === this.params.effect && (this.classNames.push(this.params.containerModifierClass + 'fade'), _.extend(this.params, e = {
								slidesPerView: 1,
								slidesPerColumn: 1,
								slidesPerGroup: 1,
								watchSlidesProgress: !0,
								spaceBetween: 0,
								virtualTranslate: !0
							}), _.extend(this.originalParams, e))
						},
						setTranslate: function () {
							'fade' === this.params.effect && this.fadeEffect.setTranslate()
						},
						setTransition: function (e) {
							'fade' === this.params.effect && this.fadeEffect.setTransition(e)
						}
					}
				},
				{
					name: 'effect-cube',
					params: {
						cubeEffect: {
							slideShadows: !0,
							shadow: !0,
							shadowOffset: 20,
							shadowScale: 0.94
						}
					},
					create: function () {
						_.extend(this, {
							cubeEffect: {
								setTranslate: ie.setTranslate.bind(this),
								setTransition: ie.setTransition.bind(this)
							}
						})
					},
					on: {
						beforeInit: function () {
							var e;
							'cube' === this.params.effect && (this.classNames.push(this.params.containerModifierClass + 'cube'), this.classNames.push(this.params.containerModifierClass + '3d'), _.extend(this.params, e = {
								slidesPerView: 1,
								slidesPerColumn: 1,
								slidesPerGroup: 1,
								watchSlidesProgress: !0,
								resistanceRatio: 0,
								spaceBetween: 0,
								centeredSlides: !1,
								virtualTranslate: !0
							}), _.extend(this.originalParams, e))
						},
						setTranslate: function () {
							'cube' === this.params.effect && this.cubeEffect.setTranslate()
						},
						setTransition: function (e) {
							'cube' === this.params.effect && this.cubeEffect.setTransition(e)
						}
					}
				},
				{
					name: 'effect-flip',
					params: {
						flipEffect: {
							slideShadows: !0,
							limitRotation: !0
						}
					},
					create: function () {
						_.extend(this, {
							flipEffect: {
								setTranslate: se.setTranslate.bind(this),
								setTransition: se.setTransition.bind(this)
							}
						})
					},
					on: {
						beforeInit: function () {
							var e;
							'flip' === this.params.effect && (this.classNames.push(this.params.containerModifierClass + 'flip'), this.classNames.push(this.params.containerModifierClass + '3d'), _.extend(this.params, e = {
								slidesPerView: 1,
								slidesPerColumn: 1,
								slidesPerGroup: 1,
								watchSlidesProgress: !0,
								spaceBetween: 0,
								virtualTranslate: !0
							}), _.extend(this.originalParams, e))
						},
						setTranslate: function () {
							'flip' === this.params.effect && this.flipEffect.setTranslate()
						},
						setTransition: function (e) {
							'flip' === this.params.effect && this.flipEffect.setTransition(e)
						}
					}
				},
				{
					name: 'effect-coverflow',
					params: {
						coverflowEffect: {
							rotate: 50,
							stretch: 0,
							depth: 100,
							modifier: 1,
							slideShadows: !0
						}
					},
					create: function () {
						_.extend(this, {
							coverflowEffect: {
								setTranslate: ae.setTranslate.bind(this),
								setTransition: ae.setTransition.bind(this)
							}
						})
					},
					on: {
						beforeInit: function () {
							'coverflow' === this.params.effect && (this.classNames.push(this.params.containerModifierClass + 'coverflow'), this.classNames.push(this.params.containerModifierClass + '3d'), this.params.watchSlidesProgress = !0, this.originalParams.watchSlidesProgress = !0)
						},
						setTranslate: function () {
							'coverflow' === this.params.effect && this.coverflowEffect.setTranslate()
						},
						setTransition: function (e) {
							'coverflow' === this.params.effect && this.coverflowEffect.setTransition(e)
						}
					}
				},
				{
					name: 'thumbs',
					params: {
						thumbs: {
							swiper: null,
							multipleActiveThumbs: !0,
							autoScrollOffset: 0,
							slideThumbActiveClass: 'swiper-slide-thumb-active',
							thumbsContainerClass: 'swiper-container-thumbs'
						}
					},
					create: function () {
						_.extend(this, {
							thumbs: {
								swiper: null,
								init: ne.init.bind(this),
								update: ne.update.bind(this),
								onThumbClick: ne.onThumbClick.bind(this)
							}
						})
					},
					on: {
						beforeInit: function () {
							var e = this.params.thumbs;
							e && e.swiper && (this.thumbs.init(), this.thumbs.update(!0))
						},
						slideChange: function () {
							this.thumbs.swiper && this.thumbs.update()
						},
						update: function () {
							this.thumbs.swiper && this.thumbs.update()
						},
						resize: function () {
							this.thumbs.swiper && this.thumbs.update()
						},
						observerUpdate: function () {
							this.thumbs.swiper && this.thumbs.update()
						},
						setTransition: function (e) {
							var t = this.thumbs.swiper;
							t && t.setTransition(e)
						},
						beforeDestroy: function () {
							var e = this.thumbs.swiper;
							e && this.thumbs.swiperCreated && e && e.destroy()
						}
					}
				}
			];
		return void 0 === H.use && (H.use = H.Class.use, H.installModule = H.Class.installModule),
			H.use(S),
			H
	});
$.get('/', function (e) {
	isLoggedIn = e.is_login,
		$('#header_right').html(e.html)
}),
	$(document).ready(function () {
		$('#mobile_menu').click(function (e) {
			$('#sidebar_menu, #mobile_menu').toggleClass('active'),
				$('#sidebar_menu_bg').addClass('active'),
				$('#search-toggle, #search, #header').removeClass('active'),
				$('body').toggleClass('body-hidden')
		}),
			$("#mobile_search").click(function () {
				$("#search").toggleClass("active");
			});
		$('.toggle-sidebar, #sidebar_menu_bg').click(function (e) {
			$('#sidebar_menu, #mobile_menu, #sidebar_menu_bg, #search-toggle, #search, #header').removeClass('active'),
				$('body').removeClass('body-hidden')
		}),
			$('#search-toggle').click(function (e) {
				$('#search, #search-toggle, #sidebar_menu_bg, #header').toggleClass('active'),
					$('body').toggleClass('body-hidden')
			}),
			$('.nav-more .nav-link').click(function (e) {
				$('#sidebar_menu .sidebar_menu-list > .nav-item .nav').toggleClass('active')
			}),
			$('.detail-extend-toggle').click(function (e) {
				$('.detail-extend').toggleClass('active')
			}),
			$('.cbox-genres .btn-showmore').click(function (e) {
				$('.cbox-genres').toggleClass('active')
			}),
			$('#more-sv').click(function (e) {
				$('.film-servers').toggleClass('active')
			}),
			$('.pc-zoom').click(function (e) {
				$('.anis-watch-wrap').toggleClass('minimize')
			}),
			$('.pc-zoomtv').click(function (e) {
				$('.anis-watch-wrap').toggleClass('tvminimize')
			}),
			$('.pc-fav').click(function (e) {
				$(this).toggleClass('active')
			}),
			$('a[href*="#"].smoothlink').not('[href="#"]').not('[href="#0"]').click(function (e) {
				var t;
				location.pathname.replace(/^\//, '') != this.pathname.replace(/^\//, '') || location.hostname != this.hostname || (t = (t = $(this.hash)).length ? t : $('[name=' + this.hash.slice(1) + ']')).length && (e.preventDefault(), $('html, body').animate({
					scrollTop: t.offset().top
				}, 300, function () {
					var e = $(t);
					if (e.focus(), e.is(':focus')) return !1;
					e.attr('tabindex', '-1'),
						e.focus()
				}))
			})
	}),
	$(window).scroll(function () {
		var e = $('#header');
		10 <= $(window).scrollTop() ? e.addClass('fixed') : e.removeClass('fixed')
	});
let hoverTimer;
let mouseOnQtip = false;
$(document).ready(function () {
	$(".film-poster-ahref").on({
		mouseenter: function (e) {
			let _this = this;
			hoverTimer = setTimeout(function () {
				let data_id = $(_this).data("id");
				$.ajax({
					url: `/ajax/qtip/${data_id}`,
					dataType: 'json',
					success: function (res) {
						if (res && res.html) {
							const qtip = $(".qtip").css('display', 'block');

							let left = e.pageX - qtip.outerWidth() / 2 + $(window).scrollLeft();
							let top = e.pageY;

							if (left + qtip.outerWidth() > $(window).width()) {
								left = $(window).width() - qtip.outerWidth();
							}
							if (left < 0) {
								left = 0;
							}
							qtip.css({
								'top': top,
								'left': left,
							}).hover(
								function () { mouseOnQtip = true; },
								function () { mouseOnQtip = false; $(".qtip").hide(); $(".qtip-tip").html(''); }
							);
							$(".qtip-tip").html(res.html);
						}
					},
					error: function (err) {
						console.log('Error:', err);
					}
				});
			}, 1000);
		},
		mouseleave: function () {
			clearTimeout(hoverTimer);
			hoverTimer = setTimeout(function () {
				if (!mouseOnQtip) {
					$(".qtip").hide();
					$(".qtip-tip").html('');
				}
			}, 200);
		}
	});
});
$(document).ready(function () {
	new Swiper('#slider', {
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
		pagination: {
			el: '#slider .swiper-pagination',
			clickable: true,
		},
		loop: true,
		autoplay: {
			delay: 3000,
		},
	});
	new Swiper('#trending-home .swiper-container', {
		slidesPerView: 6,
		spaceBetween: 30,
		navigation: {
			nextEl: '.trending-navi .navi-next',
			prevEl: '.trending-navi .navi-prev',
		},
		breakpoints: {
			320: {
				slidesPerView: 3,
				spaceBetween: 2,
			},
			480: {
				slidesPerView: 3,
				spaceBetween: 15,
			},
			900: {
				slidesPerView: 4,
				spaceBetween: 20,
			},
			1320: {
				slidesPerView: 6,
				spaceBetween: 20,
			},
			1880: {
				slidesPerView: 8,
				spaceBetween: 20,
			},
		},
		autoplay: 2000,
	});
});
$("#media-resize").on("click", function (e) {
	var $anisWatchWrap = $(".anis-watch-wrap");
	$anisWatchWrap.toggleClass("extend");
});
$(document).ready(function () {
	var $lightButton = $("#turn-off-light");
	var $maskOverlay = $("#mask-overlay");
	var $watchWrap = $(".anis-watch-wrap");

	$lightButton.click(function (e) {
		$maskOverlay.add($watchWrap).toggleClass("active");
	});

	$maskOverlay.click(function (e) {
		$maskOverlay.add($watchWrap).removeClass("active");
		$lightButton.removeClass("off");
	});
});
var navItems = document.querySelectorAll('.nav-item');
navItems.forEach(function (navItem) {
	navItem.addEventListener('click', function (event) {
		event.preventDefault();
		changeTab(event, navItem.getAttribute('data-tab'));
	});
});
function changeTab(evt, tabId) {
	var tabContent = document.querySelectorAll('.tab-content.chat');
	for (var i = 0; i < tabContent.length; i++) {
		tabContent[i].style.display = "none";
	}
	var tabLinks = document.querySelector('.nav-tabs').getElementsByTagName("li");
	for (var i = 0; i < tabLinks.length; i++) {
		tabLinks[i].classList.remove('active');
	}
	evt.currentTarget.classList.add("active");
	document.getElementById(tabId).style.display = "block";
}
$(".btn-server").click(function () {
	$(".btn-server").removeClass("active");
	$(this).closest(".btn-server").addClass("active");
});
$(document).ready(function () {
	$('.register-tab-link').click(function () {
		$('#modal-tab-login').removeClass('active');
		$('#modal-tab-register').addClass('active').addClass('show');
	});

	$('.login-tab-link').click(function () {
		$('#modal-tab-register').removeClass('active').removeClass('show');
		$('#modal-tab-login').addClass('active').addClass('show');
	});
});

$(document).ready(function () {
	$('[data-toggle="modal"]').click(function () {
		var targetModal = $(this).data('target');
		var targetTab = $(this).data('tab-show');
		$('.tab-pane').removeClass('active show');
		$(targetTab).addClass('active show');
		$(targetModal).modal('show');
	});
	$('#modallogin').on('show.bs.modal', function (event) {
		var button = $(event.relatedTarget);
		var loginOrRegister = button.data('tab-show');
		if (loginOrRegister == "#modal-tab-register") {
			$('.register-tab-link').click();
		}
	});
});