.class public final synthetic Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$0e-SMQqxXK8QeuSCCH_Bgk9AQBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/lib/permission/PermissionReq$Listener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/persistence/document/DocumentManager;

.field public final synthetic f$1:Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

.field public final synthetic f$2:Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/persistence/document/DocumentManager;Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$0e-SMQqxXK8QeuSCCH_Bgk9AQBo;->f$0:Lcom/coderpage/mine/persistence/document/DocumentManager;

    iput-object p2, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$0e-SMQqxXK8QeuSCCH_Bgk9AQBo;->f$1:Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    iput-object p3, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$0e-SMQqxXK8QeuSCCH_Bgk9AQBo;->f$2:Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$0e-SMQqxXK8QeuSCCH_Bgk9AQBo;->f$0:Lcom/coderpage/mine/persistence/document/DocumentManager;

    iget-object v1, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$0e-SMQqxXK8QeuSCCH_Bgk9AQBo;->f$1:Lcom/coderpage/mine/persistence/document/DocumentFileCreate;

    iget-object v2, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$0e-SMQqxXK8QeuSCCH_Bgk9AQBo;->f$2:Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/coderpage/mine/persistence/document/DocumentManager;->lambda$saveFile$0$DocumentManager(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
