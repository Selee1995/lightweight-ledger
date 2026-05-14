.class public Lcom/coderpage/framework/BaseViewModel;
.super Landroid/arch/lifecycle/AndroidViewModel;
.source "BaseViewModel.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method protected getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strId"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/coderpage/framework/BaseViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strId",
            "formatArgs"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/coderpage/framework/BaseViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$showToastLong$1$BaseViewModel(Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/coderpage/framework/BaseViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$showToastShort$0$BaseViewModel(Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/coderpage/framework/BaseViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 50
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 51
    invoke-static {p1}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method protected showToastLong(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageResId"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/coderpage/framework/BaseViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coderpage/framework/BaseViewModel;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method protected showToastLong(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 41
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Lcom/coderpage/framework/-$$Lambda$BaseViewModel$YA3ZRCCUqfhiY614jtfwD9l1Q7A;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/framework/-$$Lambda$BaseViewModel$YA3ZRCCUqfhiY614jtfwD9l1Q7A;-><init>(Lcom/coderpage/framework/BaseViewModel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/framework/BaseViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected showToastShort(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageResId"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/coderpage/framework/BaseViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coderpage/framework/BaseViewModel;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method protected showToastShort(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 28
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 29
    new-instance v0, Lcom/coderpage/framework/-$$Lambda$BaseViewModel$_R1V3oPjTiOvXfuNCJjKmocwQ9k;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/framework/-$$Lambda$BaseViewModel$_R1V3oPjTiOvXfuNCJjKmocwQ9k;-><init>(Lcom/coderpage/framework/BaseViewModel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coderpage/concurrency/MineExecutors;->executeOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/framework/BaseViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected wrapExpense(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 67
    invoke-static {p1}, Lcom/coderpage/base/utils/ResUtils;->wrapExpense(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected wrapIncome(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 71
    invoke-static {p1}, Lcom/coderpage/base/utils/ResUtils;->wrapIncome(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
