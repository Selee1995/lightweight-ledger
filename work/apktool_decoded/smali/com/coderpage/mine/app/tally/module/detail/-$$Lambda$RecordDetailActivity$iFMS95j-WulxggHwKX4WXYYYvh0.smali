.class public final synthetic Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailActivity$iFMS95j-WulxggHwKX4WXYYYvh0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailActivity$iFMS95j-WulxggHwKX4WXYYYvh0;->f$0:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailActivity$iFMS95j-WulxggHwKX4WXYYYvh0;->f$0:Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;

    check-cast p1, Lcom/coderpage/mine/app/tally/module/detail/RecordData;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailActivity;->lambda$subscribeUi$1$RecordDetailActivity(Lcom/coderpage/mine/app/tally/module/detail/RecordData;)V

    return-void
.end method
