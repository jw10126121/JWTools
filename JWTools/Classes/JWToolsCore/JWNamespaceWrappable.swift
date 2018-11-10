//
//  NamespaceWrappable.swift
//
//
//  Created by LjwMac on 2018/1/15.
//  Copyright © 2018年 jw. All rights reserved.
//

/// MARK - 定义命名空间

/*
 在对 TypeWrapperProtocol 这个协议做 extension 时， where 后面的 WrappedType 约束可以使用 == 或者 :，两者是有区别的。如果扩展的是值类型，比如 String，Date 等，就必须使用 ==，如果扩展的是类，则两者都可以使用，区别是如果使用 == 来约束，则扩展方法只对本类生效，子类无法使用。如果想要在子类也使用扩展方法，则使用 : 来约束。
 还有一些注意的地方
 对类型扩展实现 NamespaceWrappable 协议，只需要写一次。如果对 UIView 已经写了 NamespaceWrappable 协议实现，则 UILabel 不需要再写。实际上写了之后，编译会报错。
 如果在实现的 func 前加上 static 关键字，可以扩展出静态方法。
 */

/// 设置命名空间拓展
import class Foundation.NSObject
extension NSObject:  JWNamespaceWrappable { }
extension String:    JWNamespaceWrappable { }

extension CGFloat:   JWNamespaceWrappable { }
extension Float:     JWNamespaceWrappable { }
extension Double:    JWNamespaceWrappable { }

extension Int:       JWNamespaceWrappable { }
extension Int8:      JWNamespaceWrappable { }
extension Int16:     JWNamespaceWrappable { }
extension Int32:     JWNamespaceWrappable { }
extension Int64:     JWNamespaceWrappable { }
extension UInt:      JWNamespaceWrappable { }
extension UInt8:     JWNamespaceWrappable { }
extension UInt16:    JWNamespaceWrappable { }
extension UInt32:    JWNamespaceWrappable { }
extension UInt64:    JWNamespaceWrappable { }

extension Bool:      JWNamespaceWrappable { }

extension CGSize:    JWNamespaceWrappable { }
extension CGRect:    JWNamespaceWrappable { }


/// 命名空间 (可对这个进行拓展，T为被拓展的类型)
public struct JWNamespaceWrapper<T> {
    
    public var jwWrappedValue: T
    public init(_ value: T) {
        self.jwWrappedValue = value
    }
    
}

/// 可封装成命名空间的类型
public protocol JWNamespaceWrappable {
    
    associatedtype JWWrapperType
    
    static var jw: JWNamespaceWrapper<JWWrapperType>.Type { get set }
    
    var jw: JWNamespaceWrapper<JWWrapperType> { get set}
}

/// 可封装成命名空间的类型默认实现
extension JWNamespaceWrappable {
    
    public static var jw: JWNamespaceWrapper<Self>.Type {
        get {
            return JWNamespaceWrapper<Self>.self
        }
        set { }
    }
    
    public var jw: JWNamespaceWrapper<Self> {
        get {
            return JWNamespaceWrapper(self)
        }
        set { }
    }

}






















