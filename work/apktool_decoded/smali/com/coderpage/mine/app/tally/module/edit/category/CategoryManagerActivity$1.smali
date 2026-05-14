.class Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;
.super Ljava/lang/Object;
.source "CategoryManagerActivity.java"

# interfaces
.implements Lcom/coderpage/base/widget/MTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;

.field final synthetic val$tabExpense:Lcom/coderpage/base/widget/MTabLayout$Tab;

.field final synthetic val$tabIncome:Lcom/coderpage/base/widget/MTabLayout$Tab;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;Lcom/coderpage/base/widget/MTabLayout$Tab;Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$tabExpense",
            "val$tabIncome"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;->val$tabExpense:Lcom/coderpage/base/widget/MTabLayout$Tab;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;->val$tabIncome:Lcom/coderpage/base/widget/MTabLayout$Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method

.method public onTabSelected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;->val$tabExpense:Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-ne p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->access$000(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->onTypeChange(I)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;->val$tabIncome:Lcom/coderpage/base/widget/MTabLayout$Tab;

    if-ne p1, v0, :cond_1

    .line 89
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity$1;->this$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;

    invoke-static {p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->access$000(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerViewModel;->onTypeChange(I)V

    :cond_1
    return-void
.end method

.method public onTabUnselected(Lcom/coderpage/base/widget/MTabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method
