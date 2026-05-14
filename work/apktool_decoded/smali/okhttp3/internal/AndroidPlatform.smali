.class Lokhttp3/internal/AndroidPlatform;
.super Lokhttp3/internal/Platform;
.source "AndroidPlatform.java"


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# instance fields
.field private final getAlpnSelectedProtocol:Lokhttp3/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setAlpnProtocols:Lokhttp3/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setHostname:Lokhttp3/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setUseSessionTickets:Lokhttp3/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final sslParametersClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lokhttp3/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;",
            "Lokhttp3/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lokhttp3/internal/Platform;-><init>()V

    .line 45
    iput-object p1, p0, Lokhttp3/internal/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    .line 46
    iput-object p2, p0, Lokhttp3/internal/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/OptionalMethod;

    .line 47
    iput-object p3, p0, Lokhttp3/internal/AndroidPlatform;->setHostname:Lokhttp3/internal/OptionalMethod;

    .line 48
    iput-object p4, p0, Lokhttp3/internal/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/OptionalMethod;

    .line 49
    iput-object p5, p0, Lokhttp3/internal/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/OptionalMethod;

    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/Platform;
    .locals 10

    .line 152
    const-class v0, [B

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v2

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v2, "org.apache.harmony.xnet.provider.jsse.SSLParametersImpl"

    .line 155
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 159
    :goto_1
    new-instance v5, Lokhttp3/internal/OptionalMethod;

    const-string v2, "setUseSessionTickets"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-direct {v5, v1, v2, v6}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 161
    new-instance v6, Lokhttp3/internal/OptionalMethod;

    const-string v2, "setHostname"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {v6, v1, v2, v7}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v2, "android.net.Network"

    .line 168
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 169
    new-instance v2, Lokhttp3/internal/OptionalMethod;

    const-string v7, "getAlpnSelectedProtocol"

    new-array v9, v8, [Ljava/lang/Class;

    invoke-direct {v2, v0, v7, v9}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    :try_start_3
    new-instance v7, Lokhttp3/internal/OptionalMethod;

    const-string v9, "setAlpnProtocols"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v8

    invoke-direct {v7, v1, v9, v3}, Lokhttp3/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v8, v7

    goto :goto_2

    :catch_1
    move-object v2, v1

    :catch_2
    move-object v8, v1

    :goto_2
    move-object v7, v2

    .line 174
    :try_start_4
    new-instance v0, Lokhttp3/internal/AndroidPlatform;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/AndroidPlatform;-><init>(Ljava/lang/Class;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;Lokhttp3/internal/OptionalMethod;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v0

    :catch_3
    return-object v1
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 94
    iget-object v2, p0, Lokhttp3/internal/AndroidPlatform;->setUseSessionTickets:Lokhttp3/internal/OptionalMethod;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Lokhttp3/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v2, p0, Lokhttp3/internal/AndroidPlatform;->setHostname:Lokhttp3/internal/OptionalMethod;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lokhttp3/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    iget-object p2, p0, Lokhttp3/internal/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/OptionalMethod;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lokhttp3/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-array p2, v1, [Ljava/lang/Object;

    .line 100
    invoke-static {p3}, Lokhttp3/internal/AndroidPlatform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v0

    .line 101
    iget-object p3, p0, Lokhttp3/internal/AndroidPlatform;->setAlpnProtocols:Lokhttp3/internal/OptionalMethod;

    invoke-virtual {p3, p1, p2}, Lokhttp3/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 62
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Exception in connect"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 64
    throw p2

    :catch_1
    move-exception p1

    .line 57
    invoke-static {p1}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 58
    :cond_0
    throw p1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .line 106
    iget-object v0, p0, Lokhttp3/internal/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/OptionalMethod;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 107
    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 109
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/AndroidPlatform;->getAlpnSelectedProtocol:Lokhttp3/internal/OptionalMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lokhttp3/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    if-eqz p1, :cond_2

    .line 110
    new-instance v1, Ljava/lang/String;

    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_2
    return-object v1
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 5

    :try_start_0
    const-string v0, "android.security.NetworkSecurityPolicy"

    .line 131
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 132
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    .line 133
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "isCleartextTrafficPermitted"

    new-array v4, v2, [Ljava/lang/Class;

    .line 135
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 143
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :catch_1
    invoke-super {p0}, Lokhttp3/internal/Platform;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/16 p1, 0xa

    if-eqz p3, :cond_1

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 p3, 0x0

    .line 118
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge p3, v1, :cond_4

    .line 119
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/lit16 v3, p3, 0xfa0

    .line 122
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 123
    invoke-virtual {p2, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v4, "OkHttp"

    invoke-static {v0, v4, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v3, v2, :cond_3

    add-int/lit8 p3, v3, 0x1

    goto :goto_1

    :cond_3
    move p3, v3

    goto :goto_2

    :cond_4
    return-void
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 69
    iget-object v0, p0, Lokhttp3/internal/AndroidPlatform;->sslParametersClass:Ljava/lang/Class;

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lokhttp3/internal/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 74
    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 77
    invoke-static {p1, v0, v1}, Lokhttp3/internal/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    invoke-super {p0, p1}, Lokhttp3/internal/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    :goto_0
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string v1, "x509TrustManager"

    invoke-static {v0, p1, v1}, Lokhttp3/internal/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    if-eqz p1, :cond_1

    return-object p1

    .line 87
    :cond_1
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string v1, "trustManager"

    invoke-static {v0, p1, v1}, Lokhttp3/internal/AndroidPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    return-object p1
.end method
