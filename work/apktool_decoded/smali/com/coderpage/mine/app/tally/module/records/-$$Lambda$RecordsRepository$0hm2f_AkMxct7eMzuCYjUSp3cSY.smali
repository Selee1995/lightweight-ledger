.class public final synthetic Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$0hm2f_AkMxct7eMzuCYjUSp3cSY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/coderpage/base/common/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;IILcom/coderpage/base/common/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$0hm2f_AkMxct7eMzuCYjUSp3cSY;->f$0:Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    iput p2, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$0hm2f_AkMxct7eMzuCYjUSp3cSY;->f$1:I

    iput p3, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$0hm2f_AkMxct7eMzuCYjUSp3cSY;->f$2:I

    iput-object p4, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$0hm2f_AkMxct7eMzuCYjUSp3cSY;->f$3:Lcom/coderpage/base/common/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$0hm2f_AkMxct7eMzuCYjUSp3cSY;->f$0:Lcom/coderpage/mine/app/tally/module/records/RecordQuery;

    iget v1, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$0hm2f_AkMxct7eMzuCYjUSp3cSY;->f$1:I

    iget v2, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$0hm2f_AkMxct7eMzuCYjUSp3cSY;->f$2:I

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsRepository$0hm2f_AkMxct7eMzuCYjUSp3cSY;->f$3:Lcom/coderpage/base/common/Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/coderpage/mine/app/tally/module/records/RecordsRepository;->lambda$queryRecords$0(Lcom/coderpage/mine/app/tally/module/records/RecordQuery;IILcom/coderpage/base/common/Callback;)V

    return-void
.end method
