.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$bQShDR1f6AliKP7USs78cjMz1wA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/base/common/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/base/common/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$bQShDR1f6AliKP7USs78cjMz1wA;->f$0:Lcom/coderpage/base/common/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartRepository$bQShDR1f6AliKP7USs78cjMz1wA;->f$0:Lcom/coderpage/base/common/Callback;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartRepository;->lambda$queryFirstRecordTime$0(Lcom/coderpage/base/common/Callback;)V

    return-void
.end method
