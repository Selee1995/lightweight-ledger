.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$UUYLQ_D7FLqbirgVQ17G-hHQMvA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/framework/ViewReliedTask;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

.field public final synthetic f$1:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$UUYLQ_D7FLqbirgVQ17G-hHQMvA;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$UUYLQ_D7FLqbirgVQ17G-hHQMvA;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$UUYLQ_D7FLqbirgVQ17G-hHQMvA;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$UUYLQ_D7FLqbirgVQ17G-hHQMvA;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$UUYLQ_D7FLqbirgVQ17G-hHQMvA;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$UUYLQ_D7FLqbirgVQ17G-hHQMvA;->f$2:Landroid/view/View;

    check-cast p1, Lcom/coderpage/mine/ui/BaseActivity;

    invoke-virtual {v0, v1, v2, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->lambda$onItemMenuClick$1$CategoryManagerViewModel(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;Landroid/view/View;Lcom/coderpage/mine/ui/BaseActivity;)V

    return-void
.end method
