.class public final Lcom/tendcloud/tenddata/as;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:[B

.field private static volatile b:I

.field private static volatile c:Ljavax/crypto/spec/IvParameterSpec;

.field private static volatile d:[B

.field private static volatile e:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 25
    sput-object v0, Lcom/tendcloud/tenddata/as;->a:[B

    .line 39
    const-class v0, Landroid/util/EventLogTags;

    monitor-enter v0

    .line 41
    :try_start_0
    sget v1, Lcom/tendcloud/tenddata/as;->b:I

    if-nez v1, :cond_0

    .line 42
    invoke-static {}, Lcom/tendcloud/tenddata/aw;->a()I

    move-result v1

    sput v1, Lcom/tendcloud/tenddata/as;->b:I

    .line 44
    :cond_0
    sget-object v1, Lcom/tendcloud/tenddata/as;->c:Ljavax/crypto/spec/IvParameterSpec;

    if-nez v1, :cond_1

    .line 45
    invoke-static {}, Lcom/tendcloud/tenddata/au;->a()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v1

    sput-object v1, Lcom/tendcloud/tenddata/as;->c:Ljavax/crypto/spec/IvParameterSpec;

    .line 47
    :cond_1
    sget-object v1, Lcom/tendcloud/tenddata/as;->d:[B

    if-nez v1, :cond_2

    .line 48
    invoke-static {}, Lcom/tendcloud/tenddata/au;->b()[B

    move-result-object v1

    sput-object v1, Lcom/tendcloud/tenddata/as;->d:[B

    .line 50
    :cond_2
    sget-object v1, Lcom/tendcloud/tenddata/as;->e:Ljavax/crypto/SecretKey;

    if-nez v1, :cond_3

    .line 51
    sget v1, Lcom/tendcloud/tenddata/as;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/as;->d:[B

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/au;->a([C[B)Ljavax/crypto/SecretKey;

    move-result-object v1

    sput-object v1, Lcom/tendcloud/tenddata/as;->e:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catchall_0
    :cond_3
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .locals 2

    .line 71
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/as;->e:Ljavax/crypto/SecretKey;

    sget-object v1, Lcom/tendcloud/tenddata/as;->c:Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/au;->a([BLjavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 78
    :catchall_0
    sget-object p0, Lcom/tendcloud/tenddata/as;->a:[B

    return-object p0
.end method

.method public static b([B)[B
    .locals 2

    .line 91
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/as;->e:Ljavax/crypto/SecretKey;

    sget-object v1, Lcom/tendcloud/tenddata/as;->c:Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/au;->b([BLjavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 98
    :catchall_0
    sget-object p0, Lcom/tendcloud/tenddata/as;->a:[B

    return-object p0
.end method
