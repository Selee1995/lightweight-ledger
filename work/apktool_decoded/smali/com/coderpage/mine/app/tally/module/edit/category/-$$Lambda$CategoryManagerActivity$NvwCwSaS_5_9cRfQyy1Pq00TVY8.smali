.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerActivity$NvwCwSaS_5_9cRfQyy1Pq00TVY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerActivity$NvwCwSaS_5_9cRfQyy1Pq00TVY8;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryManagerActivity$NvwCwSaS_5_9cRfQyy1Pq00TVY8;->f$0:Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;

    check-cast p1, Lcom/coderpage/framework/ViewReliedTask;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryManagerActivity;->lambda$subscribeUi$2$CategoryManagerActivity(Lcom/coderpage/framework/ViewReliedTask;)V

    return-void
.end method
