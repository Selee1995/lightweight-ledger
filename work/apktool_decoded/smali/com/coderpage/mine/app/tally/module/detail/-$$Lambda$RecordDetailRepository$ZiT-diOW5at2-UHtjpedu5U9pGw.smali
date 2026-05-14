.class public final synthetic Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$ZiT-diOW5at2-UHtjpedu5U9pGw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/coderpage/base/common/Callback;


# direct methods
.method public synthetic constructor <init>(JLcom/coderpage/base/common/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$ZiT-diOW5at2-UHtjpedu5U9pGw;->f$0:J

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$ZiT-diOW5at2-UHtjpedu5U9pGw;->f$1:Lcom/coderpage/base/common/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$ZiT-diOW5at2-UHtjpedu5U9pGw;->f$0:J

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$ZiT-diOW5at2-UHtjpedu5U9pGw;->f$1:Lcom/coderpage/base/common/Callback;

    invoke-static {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;->lambda$queryIncome$5(JLcom/coderpage/base/common/Callback;)V

    return-void
.end method
