.class Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel$1;
.super Ljava/lang/Object;
.source "DebugViewModel.java"

# interfaces
.implements Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->onExportDataBaseClick(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissionArray"
        }
    .end annotation

    .line 54
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    const v0, 0x7f0e0082

    invoke-static {p1, v0}, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->access$100(Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;I)V

    return-void
.end method

.method public onGranted(Z[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "grantedAll",
            "permissionArray"
        }
    .end annotation

    .line 49
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/debug/DebugViewModel;)V

    return-void
.end method
