.class public final synthetic Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$HEYZPfRIAYj71OO0pu0ETCvKzsc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/base/common/Callback;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/base/common/Callback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$HEYZPfRIAYj71OO0pu0ETCvKzsc;->f$0:Lcom/coderpage/base/common/Callback;

    iput-object p2, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$HEYZPfRIAYj71OO0pu0ETCvKzsc;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$HEYZPfRIAYj71OO0pu0ETCvKzsc;->f$0:Lcom/coderpage/base/common/Callback;

    iget-object v1, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$HEYZPfRIAYj71OO0pu0ETCvKzsc;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentManager;->lambda$listFile$2(Lcom/coderpage/base/common/Callback;Ljava/util/List;)V

    return-void
.end method
