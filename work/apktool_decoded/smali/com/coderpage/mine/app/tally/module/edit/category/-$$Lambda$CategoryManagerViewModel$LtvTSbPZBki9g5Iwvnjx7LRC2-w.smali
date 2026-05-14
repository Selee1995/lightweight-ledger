.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$LtvTSbPZBki9g5Iwvnjx7LRC2-w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$LtvTSbPZBki9g5Iwvnjx7LRC2-w;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$LtvTSbPZBki9g5Iwvnjx7LRC2-w;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$LtvTSbPZBki9g5Iwvnjx7LRC2-w;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerViewModel$LtvTSbPZBki9g5Iwvnjx7LRC2-w;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->lambda$deleteCategoryAndAllRecord$8$CategoryManagerViewModel(Ljava/lang/String;)V

    return-void
.end method
