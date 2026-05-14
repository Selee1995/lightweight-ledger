.class public Lcom/tendcloud/tenddata/bq;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/bq$a;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/tendcloud/tenddata/bq;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Lcom/tendcloud/tenddata/bq$a;

.field private c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 182
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/bq;->b()Lcom/tendcloud/tenddata/bq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/tendcloud/tenddata/bq;->a:Landroid/hardware/SensorManager;

    .line 37
    iput-object v0, p0, Lcom/tendcloud/tenddata/bq;->b:Lcom/tendcloud/tenddata/bq$a;

    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 39
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/tendcloud/tenddata/bq;->c:[I

    .line 201
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "sensor"

    .line 202
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/tendcloud/tenddata/bq;->a:Landroid/hardware/SensorManager;

    .line 203
    new-instance v1, Lcom/tendcloud/tenddata/bq$a;

    invoke-direct {v1, p0, v0}, Lcom/tendcloud/tenddata/bq$a;-><init>(Lcom/tendcloud/tenddata/bq;Lcom/tendcloud/tenddata/bq$1;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/bq;->b:Lcom/tendcloud/tenddata/bq$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :array_0
    .array-data 4
        0xd
        0xc
        0xb
        0x5
        0x6
        0x2
    .end array-data
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/bq;)Lcom/tendcloud/tenddata/bq$a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tendcloud/tenddata/bq;->b:Lcom/tendcloud/tenddata/bq$a;

    return-object p0
.end method

.method private a(II)V
    .locals 2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/bq;->a:Landroid/hardware/SensorManager;

    .line 114
    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/tendcloud/tenddata/bq;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tendcloud/tenddata/bq;->b:Lcom/tendcloud/tenddata/bq$a;

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private a(Lcom/tendcloud/tenddata/bv;)V
    .locals 2

    .line 74
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 75
    iget v0, p1, Lcom/tendcloud/tenddata/bv;->c:I

    iget p1, p1, Lcom/tendcloud/tenddata/bv;->d:I

    invoke-direct {p0, v0, p1}, Lcom/tendcloud/tenddata/bq;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/bq;)Landroid/hardware/SensorManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tendcloud/tenddata/bq;->a:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static b()Lcom/tendcloud/tenddata/bq;
    .locals 2

    .line 189
    sget-object v0, Lcom/tendcloud/tenddata/bq;->d:Lcom/tendcloud/tenddata/bq;

    if-nez v0, :cond_1

    .line 190
    const-class v0, Lcom/tendcloud/tenddata/br;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/bq;->d:Lcom/tendcloud/tenddata/bq;

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Lcom/tendcloud/tenddata/bq;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bq;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/bq;->d:Lcom/tendcloud/tenddata/bq;

    .line 194
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 196
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/bq;->d:Lcom/tendcloud/tenddata/bq;

    return-object v0
.end method

.method private c()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/tendcloud/tenddata/bq;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tendcloud/tenddata/bq;->b:Lcom/tendcloud/tenddata/bq$a;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    .line 94
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/bq;->c:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 95
    aget v2, v1, v0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    aget v1, v1, v0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v1, 0xe

    .line 97
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/bq;->c:[I

    aget v1, v1, v0

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/tendcloud/tenddata/bq;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public final onTDEBEventSensor(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/tendcloud/tenddata/bv;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 53
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/bv;

    .line 54
    iget v2, v1, Lcom/tendcloud/tenddata/bv;->c:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    .line 62
    iget v2, v1, Lcom/tendcloud/tenddata/bv;->c:I

    iget v1, v1, Lcom/tendcloud/tenddata/bv;->d:I

    invoke-direct {p0, v2, v1}, Lcom/tendcloud/tenddata/bq;->a(II)V

    goto :goto_1

    .line 56
    :cond_0
    invoke-direct {p0, v1}, Lcom/tendcloud/tenddata/bq;->a(Lcom/tendcloud/tenddata/bv;)V

    goto :goto_1

    .line 59
    :cond_1
    invoke-direct {p0, v1}, Lcom/tendcloud/tenddata/bq;->a(Lcom/tendcloud/tenddata/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method
