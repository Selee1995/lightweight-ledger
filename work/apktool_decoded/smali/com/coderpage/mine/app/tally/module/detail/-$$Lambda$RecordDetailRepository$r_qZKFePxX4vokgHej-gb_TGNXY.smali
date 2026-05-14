.class public final synthetic Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$r_qZKFePxX4vokgHej-gb_TGNXY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/base/common/SimpleCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$r_qZKFePxX4vokgHej-gb_TGNXY;->f$0:Lcom/coderpage/base/common/SimpleCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/detail/-$$Lambda$RecordDetailRepository$r_qZKFePxX4vokgHej-gb_TGNXY;->f$0:Lcom/coderpage/base/common/SimpleCallback;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/detail/RecordDetailRepository;->lambda$deleteExpense$6(Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method
