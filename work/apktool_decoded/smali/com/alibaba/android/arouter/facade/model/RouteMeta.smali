.class public Lcom/alibaba/android/arouter/facade/model/RouteMeta;
.super Ljava/lang/Object;
.source "RouteMeta.java"


# instance fields
.field private destination:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private extra:I

.field private group:Ljava/lang/String;

.field private paramsType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private priority:I

.field private rawType:Ljavax/lang/model/element/Element;

.field private type:Lcom/alibaba/android/arouter/facade/enums/RouteType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->priority:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/arouter/facade/annotation/Route;Ljava/lang/Class;Lcom/alibaba/android/arouter/facade/enums/RouteType;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/arouter/facade/annotation/Route;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/android/arouter/facade/enums/RouteType;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-interface {p1}, Lcom/alibaba/android/arouter/facade/annotation/Route;->path()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/alibaba/android/arouter/facade/annotation/Route;->group()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/alibaba/android/arouter/facade/annotation/Route;->priority()I

    move-result v7

    invoke-interface {p1}, Lcom/alibaba/android/arouter/facade/annotation/Route;->extras()I

    move-result v8

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;-><init>(Lcom/alibaba/android/arouter/facade/enums/RouteType;Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/arouter/facade/annotation/Route;Ljavax/lang/model/element/Element;Lcom/alibaba/android/arouter/facade/enums/RouteType;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/arouter/facade/annotation/Route;",
            "Ljavax/lang/model/element/Element;",
            "Lcom/alibaba/android/arouter/facade/enums/RouteType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Lcom/alibaba/android/arouter/facade/annotation/Route;->path()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/alibaba/android/arouter/facade/annotation/Route;->group()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/alibaba/android/arouter/facade/annotation/Route;->priority()I

    move-result v7

    invoke-interface {p1}, Lcom/alibaba/android/arouter/facade/annotation/Route;->extras()I

    move-result v8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;-><init>(Lcom/alibaba/android/arouter/facade/enums/RouteType;Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/arouter/facade/enums/RouteType;Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/arouter/facade/enums/RouteType;",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->priority:I

    .line 97
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->type:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    .line 98
    iput-object p3, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->destination:Ljava/lang/Class;

    .line 99
    iput-object p2, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->rawType:Ljavax/lang/model/element/Element;

    .line 100
    iput-object p4, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->path:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->group:Ljava/lang/String;

    .line 102
    iput-object p6, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->paramsType:Ljava/util/Map;

    .line 103
    iput p7, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->priority:I

    .line 104
    iput p8, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->extra:I

    return-void
.end method

.method public static build(Lcom/alibaba/android/arouter/facade/enums/RouteType;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)Lcom/alibaba/android/arouter/facade/model/RouteMeta;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/arouter/facade/enums/RouteType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/alibaba/android/arouter/facade/model/RouteMeta;"
        }
    .end annotation

    .line 42
    new-instance v9, Lcom/alibaba/android/arouter/facade/model/RouteMeta;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;-><init>(Lcom/alibaba/android/arouter/facade/enums/RouteType;Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-object v9
.end method

.method public static build(Lcom/alibaba/android/arouter/facade/enums/RouteType;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)Lcom/alibaba/android/arouter/facade/model/RouteMeta;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/arouter/facade/enums/RouteType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Lcom/alibaba/android/arouter/facade/model/RouteMeta;"
        }
    .end annotation

    .line 58
    new-instance v9, Lcom/alibaba/android/arouter/facade/model/RouteMeta;

    const/4 v2, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/arouter/facade/model/RouteMeta;-><init>(Lcom/alibaba/android/arouter/facade/enums/RouteType;Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-object v9
.end method


# virtual methods
.method public getDestination()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->destination:Ljava/lang/Class;

    return-object v0
.end method

.method public getExtra()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->extra:I

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsType()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->paramsType:Ljava/util/Map;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->priority:I

    return v0
.end method

.method public getRawType()Ljavax/lang/model/element/Element;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->rawType:Ljavax/lang/model/element/Element;

    return-object v0
.end method

.method public getType()Lcom/alibaba/android/arouter/facade/enums/RouteType;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->type:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    return-object v0
.end method

.method public setDestination(Ljava/lang/Class;)Lcom/alibaba/android/arouter/facade/model/RouteMeta;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/android/arouter/facade/model/RouteMeta;"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->destination:Ljava/lang/Class;

    return-object p0
.end method

.method public setExtra(I)Lcom/alibaba/android/arouter/facade/model/RouteMeta;
    .locals 0

    .line 175
    iput p1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->extra:I

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/model/RouteMeta;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->group:Ljava/lang/String;

    return-object p0
.end method

.method public setParamsType(Ljava/util/Map;)Lcom/alibaba/android/arouter/facade/model/RouteMeta;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alibaba/android/arouter/facade/model/RouteMeta;"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->paramsType:Ljava/util/Map;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/model/RouteMeta;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setPriority(I)Lcom/alibaba/android/arouter/facade/model/RouteMeta;
    .locals 0

    .line 166
    iput p1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->priority:I

    return-object p0
.end method

.method public setRawType(Ljavax/lang/model/element/Element;)Lcom/alibaba/android/arouter/facade/model/RouteMeta;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->rawType:Ljavax/lang/model/element/Element;

    return-object p0
.end method

.method public setType(Lcom/alibaba/android/arouter/facade/enums/RouteType;)Lcom/alibaba/android/arouter/facade/model/RouteMeta;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->type:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteMeta{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->type:Lcom/alibaba/android/arouter/facade/enums/RouteType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rawType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->rawType:Ljavax/lang/model/element/Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->destination:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", group=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->group:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/android/arouter/facade/model/RouteMeta;->extra:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
