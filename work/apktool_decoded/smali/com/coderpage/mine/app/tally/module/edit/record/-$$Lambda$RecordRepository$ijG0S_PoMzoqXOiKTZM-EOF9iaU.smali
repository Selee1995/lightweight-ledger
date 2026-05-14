.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ijG0S_PoMzoqXOiKTZM-EOF9iaU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/base/common/SimpleCallback;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/base/common/SimpleCallback;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ijG0S_PoMzoqXOiKTZM-EOF9iaU;->f$0:Lcom/coderpage/base/common/SimpleCallback;

    iput-wide p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ijG0S_PoMzoqXOiKTZM-EOF9iaU;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ijG0S_PoMzoqXOiKTZM-EOF9iaU;->f$0:Lcom/coderpage/base/common/SimpleCallback;

    iget-wide v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$ijG0S_PoMzoqXOiKTZM-EOF9iaU;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->lambda$updateExpense$8(Lcom/coderpage/base/common/SimpleCallback;J)V

    return-void
.end method
