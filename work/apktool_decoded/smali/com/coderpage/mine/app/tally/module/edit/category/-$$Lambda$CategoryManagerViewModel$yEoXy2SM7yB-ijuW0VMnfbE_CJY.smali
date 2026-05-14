.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$yEoXy2SM7yB-ijuW0VMnfbE_CJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/framework/ViewReliedTask;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

.field public final synthetic f$1:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$yEoXy2SM7yB-ijuW0VMnfbE_CJY;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$yEoXy2SM7yB-ijuW0VMnfbE_CJY;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    iput-wide p3, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$yEoXy2SM7yB-ijuW0VMnfbE_CJY;->f$2:J

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$yEoXy2SM7yB-ijuW0VMnfbE_CJY;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$yEoXy2SM7yB-ijuW0VMnfbE_CJY;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    iget-wide v2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$yEoXy2SM7yB-ijuW0VMnfbE_CJY;->f$2:J

    check-cast p1, Lcom/coderpage/mine/ui/BaseActivity;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->lambda$deleteCategory$5$CategoryManagerViewModel(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;JLcom/coderpage/mine/ui/BaseActivity;)V

    return-void
.end method
