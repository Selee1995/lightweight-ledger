.class public Lcom/tendcloud/tenddata/co;
.super Ljava/util/Properties;
.source "td"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/co$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Properties;",
        "Ljava/lang/Comparable<",
        "Lcom/tendcloud/tenddata/co;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:I

.field private d:I

.field private e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tendcloud/tenddata/co;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/co;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/co;->e:Ljava/util/zip/CRC32;

    .line 26
    invoke-virtual {p0, p2}, Lcom/tendcloud/tenddata/co;->writeData([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/tendcloud/tenddata/co;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tendcloud/tenddata/co;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tendcloud/tenddata/co;)I
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/co;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/co;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 0

    .line 62
    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;I)I
    .locals 0

    .line 54
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/co;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public a([B)Ljava/lang/String;
    .locals 1

    .line 91
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public a(Ljava/lang/String;[B)[B
    .locals 0

    .line 58
    invoke-virtual {p0, p2}, Lcom/tendcloud/tenddata/co;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/co;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/co;->c(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tendcloud/tenddata/co;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)[B
    .locals 0

    .line 65
    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/co;->c(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public c()[B
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tendcloud/tenddata/co;->b:[B

    return-object v0
.end method

.method public c(Ljava/lang/String;)[B
    .locals 0

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/tendcloud/tenddata/co;

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/co;->a(Lcom/tendcloud/tenddata/co;)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/tendcloud/tenddata/co;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/tendcloud/tenddata/co;->d:I

    return v0
.end method

.method public final writeData([B)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/co;->e:Ljava/util/zip/CRC32;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/co;->e:Ljava/util/zip/CRC32;

    .line 75
    :cond_1
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tendcloud/tenddata/co;->b:[B

    .line 76
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object p1, p0, Lcom/tendcloud/tenddata/co;->b:[B

    array-length p1, p1

    iput p1, p0, Lcom/tendcloud/tenddata/co;->d:I

    .line 78
    iget-object p1, p0, Lcom/tendcloud/tenddata/co;->e:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 79
    iget-object p1, p0, Lcom/tendcloud/tenddata/co;->e:Ljava/util/zip/CRC32;

    iget-object v0, p0, Lcom/tendcloud/tenddata/co;->b:[B

    invoke-virtual {p1, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 80
    iget-object p1, p0, Lcom/tendcloud/tenddata/co;->e:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/tendcloud/tenddata/co;->c:I

    return-void
.end method
