.class public final synthetic Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$OTKf1S_6ZwLmN0qWSfgkkIluKtw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/base/common/SimpleCallback;

.field public final synthetic f$1:Lcom/coderpage/base/common/Result;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/base/common/SimpleCallback;Lcom/coderpage/base/common/Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$OTKf1S_6ZwLmN0qWSfgkkIluKtw;->f$0:Lcom/coderpage/base/common/SimpleCallback;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$OTKf1S_6ZwLmN0qWSfgkkIluKtw;->f$1:Lcom/coderpage/base/common/Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$OTKf1S_6ZwLmN0qWSfgkkIluKtw;->f$0:Lcom/coderpage/base/common/SimpleCallback;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/home/-$$Lambda$HomRepository$OTKf1S_6ZwLmN0qWSfgkkIluKtw;->f$1:Lcom/coderpage/base/common/Result;

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/home/HomRepository;->lambda$loadCurrentMonthExpenseData$1(Lcom/coderpage/base/common/SimpleCallback;Lcom/coderpage/base/common/Result;)V

    return-void
.end method
