.class public final synthetic Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$91ZdPdX7xXJG3JRlMcYASr00G7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/base/common/Callback;

.field public final synthetic f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/base/common/Callback;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$91ZdPdX7xXJG3JRlMcYASr00G7o;->f$0:Lcom/coderpage/base/common/Callback;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$91ZdPdX7xXJG3JRlMcYASr00G7o;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$91ZdPdX7xXJG3JRlMcYASr00G7o;->f$0:Lcom/coderpage/base/common/Callback;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$91ZdPdX7xXJG3JRlMcYASr00G7o;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;->lambda$queryIncome$4(Lcom/coderpage/base/common/Callback;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    return-void
.end method
