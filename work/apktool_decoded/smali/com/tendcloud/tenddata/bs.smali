.class final Lcom/tendcloud/tenddata/bs;
.super Landroid/telephony/PhoneStateListener;
.source "td"


# static fields
.field static final a:J = 0x2bf20L


# instance fields
.field b:J

.field c:J

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 211
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const-wide/16 v0, 0x0

    .line 213
    iput-wide v0, p0, Lcom/tendcloud/tenddata/bs;->b:J

    .line 214
    iput-wide v0, p0, Lcom/tendcloud/tenddata/bs;->c:J

    const/4 v0, 0x0

    .line 216
    iput v0, p0, Lcom/tendcloud/tenddata/bs;->e:I

    return-void
.end method

.method private a()V
    .locals 2

    .line 237
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/bn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tendcloud/tenddata/bs$1;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/bs$1;-><init>(Lcom/tendcloud/tenddata/bs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    .line 220
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 222
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/bs;->d:I

    .line 224
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bs;->a()V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 227
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/bs;->d:I

    .line 228
    invoke-direct {p0}, Lcom/tendcloud/tenddata/bs;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
