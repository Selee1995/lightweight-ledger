.class public final Lokhttp3/internal/io/RealConnection;
.super Lokhttp3/internal/framed/FramedConnection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lokhttp3/Connection;


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lokhttp3/internal/http/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile framedConnection:Lokhttp3/internal/framed/FramedConnection;

.field private handshake:Lokhttp3/Handshake;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lokhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lokhttp3/Route;

.field public sink:Lokio/BufferedSink;

.field public socket:Ljava/net/Socket;

.field public source:Lokio/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Lokhttp3/Route;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedConnection$Listener;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/io/RealConnection;->allocations:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 86
    iput-wide v0, p0, Lokhttp3/internal/io/RealConnection;->idleAtNanos:J

    .line 89
    iput-object p1, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    return-void
.end method

.method private buildConnection(IIILokhttp3/internal/ConnectionSpecSelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/io/RealConnection;->connectSocket(IIILokhttp3/internal/ConnectionSpecSelector;)V

    .line 171
    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/io/RealConnection;->establishProtocol(IILokhttp3/internal/ConnectionSpecSelector;)V

    return-void
.end method

.method private buildTunneledConnection(IIILokhttp3/internal/ConnectionSpecSelector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lokhttp3/internal/io/RealConnection;->createTunnelRequest()Lokhttp3/Request;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/io/RealConnection;->connectSocket(IIILokhttp3/internal/ConnectionSpecSelector;)V

    .line 152
    invoke-direct {p0, p2, p3, v0, v1}, Lokhttp3/internal/io/RealConnection;->createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/io/RealConnection;->establishProtocol(IILokhttp3/internal/ConnectionSpecSelector;)V

    return-void

    .line 158
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const/4 v3, 0x0

    .line 159
    iput-object v3, p0, Lokhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 160
    iput-object v3, p0, Lokhttp3/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    .line 161
    iput-object v3, p0, Lokhttp3/internal/io/RealConnection;->source:Lokio/BufferedSource;

    goto :goto_0

    .line 148
    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many tunnel connections attempted: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private connectSocket(IIILokhttp3/internal/ConnectionSpecSelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object p3, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {p3}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object p3

    .line 177
    iget-object p4, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {p4}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object p4

    .line 179
    invoke-virtual {p3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    new-instance p4, Ljava/net/Socket;

    invoke-direct {p4, p3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p4}, Lokhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p4

    :goto_1
    iput-object p4, p0, Lokhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 183
    invoke-virtual {p4, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 185
    :try_start_0
    invoke-static {}, Lokhttp3/internal/Platform;->get()Lokhttp3/internal/Platform;

    move-result-object p2

    iget-object p3, p0, Lokhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object p4, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {p4}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lokhttp3/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    iget-object p1, p0, Lokhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/io/RealConnection;->source:Lokio/BufferedSource;

    .line 190
    iget-object p1, p0, Lokhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    return-void

    .line 187
    :catch_0
    new-instance p1, Ljava/net/ConnectException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to connect to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {p3}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private connectTls(IILokhttp3/internal/ConnectionSpecSelector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object p1, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 229
    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->port()I

    move-result v3

    const/4 v4, 0x1

    .line 228
    invoke-virtual {p2, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    :try_start_1
    invoke-virtual {p3, p2}, Lokhttp3/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    move-result-object p3

    .line 233
    invoke-virtual {p3}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-static {}, Lokhttp3/internal/Platform;->get()Lokhttp3/internal/Platform;

    move-result-object v1

    .line 235
    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v3

    .line 234
    invoke-virtual {v1, p2, v2, v3}, Lokhttp3/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 239
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 240
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v1

    .line 243
    invoke-virtual {p1}, Lokhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 252
    invoke-virtual {p1}, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {v1}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v3

    .line 252
    invoke-virtual {v2, p1, v3}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 256
    invoke-virtual {p3}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 257
    invoke-static {}, Lokhttp3/internal/Platform;->get()Lokhttp3/internal/Platform;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    .line 259
    :cond_1
    iput-object p2, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 260
    invoke-static {p2}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/io/RealConnection;->source:Lokio/BufferedSource;

    .line 261
    iget-object p1, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    .line 262
    iput-object v1, p0, Lokhttp3/internal/io/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v0, :cond_2

    .line 264
    invoke-static {v0}, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_0
    iput-object p1, p0, Lokhttp3/internal/io/RealConnection;->protocol:Lokhttp3/Protocol;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 272
    invoke-static {}, Lokhttp3/internal/Platform;->get()Lokhttp3/internal/Platform;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    :cond_3
    return-void

    .line 244
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    .line 245
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not verified:\n    certificate: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-static {p3}, Lokhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    DN: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    subjectAltNames: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {p3}, Lokhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 268
    :goto_1
    :try_start_3
    invoke-static {p1}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 269
    :cond_5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v0, :cond_6

    .line 272
    invoke-static {}, Lokhttp3/internal/Platform;->get()Lokhttp3/internal/Platform;

    move-result-object p2

    invoke-virtual {p2, v0}, Lokhttp3/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 275
    :cond_6
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    throw p1
.end method

.method private createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 289
    :goto_0
    new-instance v0, Lokhttp3/internal/http/Http1xStream;

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->source:Lokio/BufferedSource;

    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/internal/http/Http1xStream;-><init>(Lokhttp3/internal/http/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 290
    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 291
    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v1

    int-to-long v4, p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 292
    invoke-virtual {p3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lokhttp3/internal/http/Http1xStream;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Lokhttp3/internal/http/Http1xStream;->finishRequest()V

    .line 294
    invoke-virtual {v0}, Lokhttp3/internal/http/Http1xStream;->readResponse()Lokhttp3/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p3

    .line 297
    invoke-static {p3}, Lokhttp3/internal/http/OkHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    const-wide/16 v1, 0x0

    .line 301
    :cond_0
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http/Http1xStream;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v0

    const v1, 0x7fffffff

    .line 302
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 303
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 305
    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    .line 317
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    invoke-interface {v0, v1, p3}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    .line 320
    invoke-virtual {p3, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto/16 :goto_0

    .line 318
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_4
    iget-object p1, p0, Lokhttp3/internal/io/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lokhttp3/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    .line 312
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private createTunnelRequest()Lokhttp3/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    .line 339
    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    .line 340
    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 341
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 342
    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method private establishProtocol(IILokhttp3/internal/ConnectionSpecSelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/io/RealConnection;->connectTls(IILokhttp3/internal/ConnectionSpecSelector;)V

    goto :goto_0

    .line 198
    :cond_0
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object p1, p0, Lokhttp3/internal/io/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 199
    iget-object p1, p0, Lokhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 202
    :goto_0
    iget-object p1, p0, Lokhttp3/internal/io/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object p2, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    const/4 p3, 0x1

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lokhttp3/internal/io/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object p2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    iput p3, p0, Lokhttp3/internal/io/RealConnection;->allocationLimit:I

    goto :goto_2

    .line 203
    :cond_2
    :goto_1
    iget-object p1, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 205
    new-instance p1, Lokhttp3/internal/framed/FramedConnection$Builder;

    invoke-direct {p1, p3}, Lokhttp3/internal/framed/FramedConnection$Builder;-><init>(Z)V

    iget-object p2, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    iget-object p3, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    .line 206
    invoke-virtual {p3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->source:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, p2, p3, v0, v1}, Lokhttp3/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object p1

    iget-object p2, p0, Lokhttp3/internal/io/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 207
    invoke-virtual {p1, p2}, Lokhttp3/internal/framed/FramedConnection$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object p1

    .line 208
    invoke-virtual {p1, p0}, Lokhttp3/internal/framed/FramedConnection$Builder;->listener(Lokhttp3/internal/framed/FramedConnection$Listener;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->build()Lokhttp3/internal/framed/FramedConnection;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedConnection;->start()V

    .line 213
    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result p2

    iput p2, p0, Lokhttp3/internal/io/RealConnection;->allocationLimit:I

    .line 214
    iput-object p1, p0, Lokhttp3/internal/io/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    :goto_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 357
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public connect(IIILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lokhttp3/internal/http/RouteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->protocol:Lokhttp3/Protocol;

    if-nez v0, :cond_6

    .line 97
    new-instance v0, Lokhttp3/internal/ConnectionSpecSelector;

    invoke-direct {v0, p4}, Lokhttp3/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 99
    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    .line 100
    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Lokhttp3/internal/http/RouteException;

    new-instance p2, Ljava/net/UnknownServiceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "CLEARTEXT communication not supported: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lokhttp3/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p4, 0x0

    move-object v1, p4

    .line 105
    :goto_1
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->protocol:Lokhttp3/Protocol;

    if-nez v2, :cond_5

    .line 107
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v2}, Lokhttp3/Route;->requiresTunnel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/internal/io/RealConnection;->buildTunneledConnection(IIILokhttp3/internal/ConnectionSpecSelector;)V

    goto :goto_1

    .line 111
    :cond_2
    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/internal/io/RealConnection;->buildConnection(IIILokhttp3/internal/ConnectionSpecSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 114
    iget-object v3, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 115
    iget-object v3, p0, Lokhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 116
    iput-object p4, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 117
    iput-object p4, p0, Lokhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 118
    iput-object p4, p0, Lokhttp3/internal/io/RealConnection;->source:Lokio/BufferedSource;

    .line 119
    iput-object p4, p0, Lokhttp3/internal/io/RealConnection;->sink:Lokio/BufferedSink;

    .line 120
    iput-object p4, p0, Lokhttp3/internal/io/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 121
    iput-object p4, p0, Lokhttp3/internal/io/RealConnection;->protocol:Lokhttp3/Protocol;

    if-nez v1, :cond_3

    .line 124
    new-instance v1, Lokhttp3/internal/http/RouteException;

    invoke-direct {v1, v2}, Lokhttp3/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {v1, v2}, Lokhttp3/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_2
    if-eqz p5, :cond_4

    .line 129
    invoke-virtual {v0, v2}, Lokhttp3/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 130
    :cond_4
    throw v1

    :cond_5
    return-void

    .line 94
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public handshake()Lokhttp3/Handshake;
    .locals 1

    .line 407
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method isConnected()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->protocol:Lokhttp3/Protocol;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHealthy(Z)Z
    .locals 4

    .line 366
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_3

    .line 376
    :try_start_0
    iget-object p1, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 379
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 384
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public isMultiplexed()Z
    .locals 1

    .line 415
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSettings(Lokhttp3/internal/framed/FramedConnection;)V
    .locals 0

    .line 403
    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result p1

    iput p1, p0, Lokhttp3/internal/io/RealConnection;->allocationLimit:I

    return-void
.end method

.method public onStream(Lokhttp3/internal/framed/FramedStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method public protocol()Lokhttp3/Protocol;
    .locals 1

    .line 419
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->protocol:Lokhttp3/Protocol;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_0
    return-object v0

    .line 422
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->getProtocol()Lokhttp3/Protocol;

    move-result-object v0

    return-object v0
.end method

.method public route()Lokhttp3/Route;
    .locals 1

    .line 352
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .line 361
    iget-object v0, p0, Lokhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    .line 428
    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    .line 430
    invoke-virtual {v1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->route:Lokhttp3/Route;

    .line 432
    invoke-virtual {v1}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v1}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/io/RealConnection;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
