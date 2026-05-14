.class Lcom/tendcloud/tenddata/bq$a$1;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tendcloud/tenddata/bq$a;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tendcloud/tenddata/bq$a;

.field final synthetic val$event:Landroid/hardware/SensorEvent;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/bq$a;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/tendcloud/tenddata/bq$a$1;->this$1:Lcom/tendcloud/tenddata/bq$a;

    iput-object p2, p0, Lcom/tendcloud/tenddata/bq$a$1;->val$event:Landroid/hardware/SensorEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tendcloud/tenddata/bq$a$1;->val$event:Landroid/hardware/SensorEvent;

    iget-object v2, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/tendcloud/tenddata/bq$a$1;->this$1:Lcom/tendcloud/tenddata/bq$a;

    iget-object v2, p0, Lcom/tendcloud/tenddata/bq$a$1;->val$event:Landroid/hardware/SensorEvent;

    iget-object v2, v2, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/bq$a;->access$000(Lcom/tendcloud/tenddata/bq$a;[F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "values"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/tendcloud/tenddata/bq$a$1;->val$event:Landroid/hardware/SensorEvent;

    iget-wide v1, v1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/tendcloud/tenddata/bq$a$1;->val$event:Landroid/hardware/SensorEvent;

    iget v1, v1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "accuracy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Lcom/tendcloud/tenddata/bx;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/bx;-><init>()V

    const-string v2, "env"

    .line 143
    iput-object v2, v1, Lcom/tendcloud/tenddata/bx;->b:Ljava/lang/String;

    const-string v2, "sensorPoint"

    .line 144
    iput-object v2, v1, Lcom/tendcloud/tenddata/bx;->c:Ljava/lang/String;

    .line 145
    iput-object v0, v1, Lcom/tendcloud/tenddata/bx;->d:Ljava/util/Map;

    .line 146
    sget-object v0, Lcom/tendcloud/tenddata/a;->ENV:Lcom/tendcloud/tenddata/a;

    iput-object v0, v1, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 148
    invoke-static {}, Lcom/tendcloud/tenddata/z;->a()Lcom/tendcloud/tenddata/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/z;->post(Ljava/lang/Object;)V

    return-void
.end method
