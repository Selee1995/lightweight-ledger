.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortActivity$V36um7LxzLpv3adFivdrfIi3Hcw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortActivity$V36um7LxzLpv3adFivdrfIi3Hcw;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategorySortActivity$V36um7LxzLpv3adFivdrfIi3Hcw;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategorySortActivity;->lambda$subscribeUi$1$CategorySortActivity(Ljava/util/List;)V

    return-void
.end method
