.class public final synthetic Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$WMDXgyuHLzE8mg93h34fwJGqA8g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/lib/permission/PermissionReq$Listener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/persistence/document/DocumentManager;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lcom/coderpage/base/common/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/persistence/document/DocumentManager;Ljava/lang/Runnable;Lcom/coderpage/base/common/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$WMDXgyuHLzE8mg93h34fwJGqA8g;->f$0:Lcom/coderpage/mine/persistence/document/DocumentManager;

    iput-object p2, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$WMDXgyuHLzE8mg93h34fwJGqA8g;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$WMDXgyuHLzE8mg93h34fwJGqA8g;->f$2:Lcom/coderpage/base/common/Callback;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/util/List;Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$WMDXgyuHLzE8mg93h34fwJGqA8g;->f$0:Lcom/coderpage/mine/persistence/document/DocumentManager;

    iget-object v1, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$WMDXgyuHLzE8mg93h34fwJGqA8g;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$WMDXgyuHLzE8mg93h34fwJGqA8g;->f$2:Lcom/coderpage/base/common/Callback;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/coderpage/mine/persistence/document/DocumentManager;->lambda$listFile$4$DocumentManager(Ljava/lang/Runnable;Lcom/coderpage/base/common/Callback;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method
