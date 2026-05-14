.class public final synthetic Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$PermissionReqDialog$I_-eSs9R8dOMlJbJsOiI46pWXFg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$PermissionReqDialog$I_-eSs9R8dOMlJbJsOiI46pWXFg;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$PermissionReqDialog$I_-eSs9R8dOMlJbJsOiI46pWXFg;->f$1:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$PermissionReqDialog$I_-eSs9R8dOMlJbJsOiI46pWXFg;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$PermissionReqDialog$I_-eSs9R8dOMlJbJsOiI46pWXFg;->f$1:Landroid/widget/LinearLayout;

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/ui/dialog/PermissionReqDialog;->lambda$initView$0(Landroid/app/Activity;Landroid/widget/LinearLayout;IILjava/lang/String;)V

    return-void
.end method
