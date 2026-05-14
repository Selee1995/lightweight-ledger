.class Lcom/tendcloud/tenddata/bq$a;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/bq;


# direct methods
.method private constructor <init>(Lcom/tendcloud/tenddata/bq;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/tendcloud/tenddata/bq$a;->this$0:Lcom/tendcloud/tenddata/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/bq;Lcom/tendcloud/tenddata/bq$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/bq$a;-><init>(Lcom/tendcloud/tenddata/bq;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tendcloud/tenddata/bq$a;[F)Ljava/lang/String;
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/bq$a;->arrayToString([F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private arrayToString([F)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 169
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 170
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 133
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/bq$a$1;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/bq$a$1;-><init>(Lcom/tendcloud/tenddata/bq$a;Landroid/hardware/SensorEvent;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :catchall_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/bq$a;->this$0:Lcom/tendcloud/tenddata/bq;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bq;->b(Lcom/tendcloud/tenddata/bq;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/bq$a;->this$0:Lcom/tendcloud/tenddata/bq;

    invoke-static {v1}, Lcom/tendcloud/tenddata/bq;->a(Lcom/tendcloud/tenddata/bq;)Lcom/tendcloud/tenddata/bq$a;

    move-result-object v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method
