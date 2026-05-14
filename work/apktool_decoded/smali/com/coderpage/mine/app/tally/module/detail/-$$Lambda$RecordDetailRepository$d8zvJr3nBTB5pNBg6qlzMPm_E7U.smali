.class public final synthetic Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$d8zvJr3nBTB5pNBg6qlzMPm_E7U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/coderpage/base/common/SimpleCallback;


# direct methods
.method public synthetic constructor <init>(JLcom/coderpage/base/common/SimpleCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$d8zvJr3nBTB5pNBg6qlzMPm_E7U;->f$0:J

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$d8zvJr3nBTB5pNBg6qlzMPm_E7U;->f$1:Lcom/coderpage/base/common/SimpleCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$d8zvJr3nBTB5pNBg6qlzMPm_E7U;->f$0:J

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$d8zvJr3nBTB5pNBg6qlzMPm_E7U;->f$1:Lcom/coderpage/base/common/SimpleCallback;

    invoke-static {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;->lambda$deleteExpense$7(JLcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method
