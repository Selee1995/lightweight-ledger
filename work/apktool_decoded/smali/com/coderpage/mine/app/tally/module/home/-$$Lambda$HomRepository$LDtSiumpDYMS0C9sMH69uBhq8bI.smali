.class public final synthetic Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$LDtSiumpDYMS0C9sMH69uBhq8bI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

.field public final synthetic f$1:Lcom/coderpage/base/common/SimpleCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/home/HomRepository;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$LDtSiumpDYMS0C9sMH69uBhq8bI;->f$0:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$LDtSiumpDYMS0C9sMH69uBhq8bI;->f$1:Lcom/coderpage/base/common/SimpleCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$LDtSiumpDYMS0C9sMH69uBhq8bI;->f$0:Lcom/coderpage/mine/app/tally/module/home/HomRepository;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$LDtSiumpDYMS0C9sMH69uBhq8bI;->f$1:Lcom/coderpage/base/common/SimpleCallback;

    invoke-virtual {v0, v1}, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->lambda$loadCurrentMonthExpenseData$2$HomRepository(Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method
