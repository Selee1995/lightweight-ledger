.class public Lcom/coderpage/mine/persistence/entity/KeyValue;
.super Ljava/lang/Object;
.source "KeyValue.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/coderpage/mine/persistence/entity/KeyValue;->key:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/coderpage/mine/persistence/entity/KeyValue;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/coderpage/mine/persistence/entity/KeyValue;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/coderpage/mine/persistence/entity/KeyValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/coderpage/mine/persistence/entity/KeyValue;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/coderpage/mine/persistence/entity/KeyValue;->value:Ljava/lang/String;

    return-void
.end method
