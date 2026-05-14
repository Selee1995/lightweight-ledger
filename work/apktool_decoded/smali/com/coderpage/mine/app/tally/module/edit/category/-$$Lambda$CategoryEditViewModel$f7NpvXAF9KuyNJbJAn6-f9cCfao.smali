.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$f7NpvXAF9KuyNJbJAn6-f9cCfao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/common/SimpleCallback;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$f7NpvXAF9KuyNJbJAn6-f9cCfao;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$f7NpvXAF9KuyNJbJAn6-f9cCfao;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    check-cast p1, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->lambda$updateCategory$0$CategoryEditViewModel(Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    return-void
.end method
