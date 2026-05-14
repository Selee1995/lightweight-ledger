.class public final synthetic Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsViewModel$GYx2XlGCgB04gN-wX-eBCUYuKBM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Calendar;

.field public final synthetic f$1:Lcom/coderpage/base/utils/WrappedInt;

.field public final synthetic f$2:Lcom/coderpage/base/utils/WrappedInt;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Calendar;Lcom/coderpage/base/utils/WrappedInt;Lcom/coderpage/base/utils/WrappedInt;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsViewModel$GYx2XlGCgB04gN-wX-eBCUYuKBM;->f$0:Ljava/util/Calendar;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsViewModel$GYx2XlGCgB04gN-wX-eBCUYuKBM;->f$1:Lcom/coderpage/base/utils/WrappedInt;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsViewModel$GYx2XlGCgB04gN-wX-eBCUYuKBM;->f$2:Lcom/coderpage/base/utils/WrappedInt;

    iput-object p4, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsViewModel$GYx2XlGCgB04gN-wX-eBCUYuKBM;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsViewModel$GYx2XlGCgB04gN-wX-eBCUYuKBM;->f$0:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsViewModel$GYx2XlGCgB04gN-wX-eBCUYuKBM;->f$1:Lcom/coderpage/base/utils/WrappedInt;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsViewModel$GYx2XlGCgB04gN-wX-eBCUYuKBM;->f$2:Lcom/coderpage/base/utils/WrappedInt;

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/records/-$$Lambda$RecordsViewModel$GYx2XlGCgB04gN-wX-eBCUYuKBM;->f$3:Ljava/util/List;

    move-object v6, p3

    check-cast v6, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/coderpage/mine/app/tally/module/records/RecordsViewModel;->lambda$formatRecordList$0(Ljava/util/Calendar;Lcom/coderpage/base/utils/WrappedInt;Lcom/coderpage/base/utils/WrappedInt;Ljava/util/List;IILcom/coderpage/mine/app/tally/persistence/model/Record;)V

    return-void
.end method
