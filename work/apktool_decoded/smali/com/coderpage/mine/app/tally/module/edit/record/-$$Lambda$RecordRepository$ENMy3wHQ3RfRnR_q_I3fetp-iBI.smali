.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ENMy3wHQ3RfRnR_q_I3fetp-iBI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/coderpage/base/common/SimpleCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;JLcom/coderpage/base/common/SimpleCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ENMy3wHQ3RfRnR_q_I3fetp-iBI;->f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

    iput-wide p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ENMy3wHQ3RfRnR_q_I3fetp-iBI;->f$1:J

    iput-object p4, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ENMy3wHQ3RfRnR_q_I3fetp-iBI;->f$2:Lcom/coderpage/base/common/SimpleCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ENMy3wHQ3RfRnR_q_I3fetp-iBI;->f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ENMy3wHQ3RfRnR_q_I3fetp-iBI;->f$1:J

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ENMy3wHQ3RfRnR_q_I3fetp-iBI;->f$2:Lcom/coderpage/base/common/SimpleCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->lambda$queryRecordById$5$RecordRepository(JLcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method
