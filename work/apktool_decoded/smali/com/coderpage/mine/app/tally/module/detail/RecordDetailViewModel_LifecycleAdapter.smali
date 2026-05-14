.class public Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel_LifecycleAdapter;
.super Ljava/lang/Object;
.source "RecordDetailViewModel_LifecycleAdapter.java"

# interfaces
.implements Landroid/arch/lifecycle/GeneratedAdapter;


# instance fields
.field final mReceiver:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel_LifecycleAdapter;->mReceiver:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    return-void
.end method


# virtual methods
.method public callMethods(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;ZLandroid/arch/lifecycle/MethodCallsLogger;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "owner",
            "event",
            "onAny",
            "logger"
        }
    .end annotation

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_1

    return-void

    .line 23
    :cond_1
    sget-object p3, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    const/4 v1, 0x2

    if-ne p2, p3, :cond_4

    if-eqz v0, :cond_2

    const-string p2, "onCreate"

    .line 24
    invoke-virtual {p4, p2, v1}, Landroid/arch/lifecycle/MethodCallsLogger;->approveCall(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 25
    :cond_2
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel_LifecycleAdapter;->mReceiver:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-virtual {p2, p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->onCreate(Landroid/arch/lifecycle/LifecycleOwner;)V

    :cond_3
    return-void

    .line 29
    :cond_4
    sget-object p3, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    if-ne p2, p3, :cond_6

    if-eqz v0, :cond_5

    const-string p2, "onDestroy"

    .line 30
    invoke-virtual {p4, p2, v1}, Landroid/arch/lifecycle/MethodCallsLogger;->approveCall(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 31
    :cond_5
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel_LifecycleAdapter;->mReceiver:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;

    invoke-virtual {p2, p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailViewModel;->onDestroy(Landroid/arch/lifecycle/LifecycleOwner;)V

    :cond_6
    return-void
.end method
