.class public final synthetic Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$EfJFZNYm-mMEVbnULZQc2jAuYj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/FunctionUtils$Task;


# instance fields
.field public final synthetic f$0:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$EfJFZNYm-mMEVbnULZQc2jAuYj8;->f$0:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/ui/-$$Lambda$BaseActivity$EfJFZNYm-mMEVbnULZQc2jAuYj8;->f$0:Ljava/lang/CharSequence;

    check-cast p1, Landroid/support/v7/app/ActionBar;

    invoke-static {v0, p1}, Lcom/coderpage/mine/ui/BaseActivity;->lambda$setToolbarSubTitle$3(Ljava/lang/CharSequence;Landroid/support/v7/app/ActionBar;)V

    return-void
.end method
