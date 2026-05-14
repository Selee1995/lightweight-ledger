.class public final synthetic Lcom/coderpage/mine/ui/widget/-$$Lambda$PopupMenu$7URxUczg7PMC3x3sMD_8aGhijgk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/ui/widget/PopupMenu;

.field public final synthetic f$1:Landroid/widget/PopupWindow;

.field public final synthetic f$2:Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/ui/widget/PopupMenu;Landroid/widget/PopupWindow;Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/ui/widget/-$$Lambda$PopupMenu$7URxUczg7PMC3x3sMD_8aGhijgk;->f$0:Lcom/coderpage/mine/ui/widget/PopupMenu;

    iput-object p2, p0, Lcom/coderpage/mine/ui/widget/-$$Lambda$PopupMenu$7URxUczg7PMC3x3sMD_8aGhijgk;->f$1:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/coderpage/mine/ui/widget/-$$Lambda$PopupMenu$7URxUczg7PMC3x3sMD_8aGhijgk;->f$2:Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/coderpage/mine/ui/widget/-$$Lambda$PopupMenu$7URxUczg7PMC3x3sMD_8aGhijgk;->f$0:Lcom/coderpage/mine/ui/widget/PopupMenu;

    iget-object v1, p0, Lcom/coderpage/mine/ui/widget/-$$Lambda$PopupMenu$7URxUczg7PMC3x3sMD_8aGhijgk;->f$1:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/coderpage/mine/ui/widget/-$$Lambda$PopupMenu$7URxUczg7PMC3x3sMD_8aGhijgk;->f$2:Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;

    invoke-virtual {v0, v1, v2, p1}, Lcom/coderpage/mine/ui/widget/PopupMenu;->lambda$show$0$PopupMenu(Landroid/widget/PopupWindow;Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;Landroid/view/View;)V

    return-void
.end method
