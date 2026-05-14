.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$f6MZ7n-etheY1P0HHlKirFX_7V8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$f6MZ7n-etheY1P0HHlKirFX_7V8;->f$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$f6MZ7n-etheY1P0HHlKirFX_7V8;->f$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;

    check-cast p1, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;

    invoke-virtual {v0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->lambda$subScribeUi$3$TallyChartActivity(Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyDataList;)V

    return-void
.end method
