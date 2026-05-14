.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$beusjkqvryRioh_yxWtsxMvMMr8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/common/SimpleCallback;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$beusjkqvryRioh_yxWtsxMvMMr8;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$beusjkqvryRioh_yxWtsxMvMMr8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$beusjkqvryRioh_yxWtsxMvMMr8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$beusjkqvryRioh_yxWtsxMvMMr8;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$beusjkqvryRioh_yxWtsxMvMMr8;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$beusjkqvryRioh_yxWtsxMvMMr8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$beusjkqvryRioh_yxWtsxMvMMr8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryEditViewModel$beusjkqvryRioh_yxWtsxMvMMr8;->f$3:Ljava/lang/String;

    check-cast p1, Lcom/coderpage/base/common/Result;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryEditViewModel;->lambda$addCategory$1$CategoryEditViewModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coderpage/base/common/Result;)V

    return-void
.end method
