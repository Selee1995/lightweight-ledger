.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$pJ2ENkSE42IeZlmYBRfjZhJRL-c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/mine/ui/widget/PopupMenu$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

.field public final synthetic f$1:Lcom/coderpage/mine/ui/BaseActivity;

.field public final synthetic f$2:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;Lcom/coderpage/mine/ui/BaseActivity;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$pJ2ENkSE42IeZlmYBRfjZhJRL-c;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$pJ2ENkSE42IeZlmYBRfjZhJRL-c;->f$1:Lcom/coderpage/mine/ui/BaseActivity;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$pJ2ENkSE42IeZlmYBRfjZhJRL-c;->f$2:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/widget/PopupWindow;Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;)V
    .locals 3

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$pJ2ENkSE42IeZlmYBRfjZhJRL-c;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$pJ2ENkSE42IeZlmYBRfjZhJRL-c;->f$1:Lcom/coderpage/mine/ui/BaseActivity;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$pJ2ENkSE42IeZlmYBRfjZhJRL-c;->f$2:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->lambda$onItemMenuClick$0$CategoryManagerViewModel(Lcom/coderpage/mine/ui/BaseActivity;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;Landroid/widget/PopupWindow;Lcom/coderpage/mine/ui/widget/PopupMenu$MenuItem;)V

    return-void
.end method
