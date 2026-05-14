.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$2cqVOYMUy0h7Zit5QRZSKisHKNg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/common/SimpleCallback;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$2cqVOYMUy0h7Zit5QRZSKisHKNg;->f$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    iput-boolean p2, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$2cqVOYMUy0h7Zit5QRZSKisHKNg;->f$1:Z

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$2cqVOYMUy0h7Zit5QRZSKisHKNg;->f$0:Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;

    iget-boolean v1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$2cqVOYMUy0h7Zit5QRZSKisHKNg;->f$1:Z

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->lambda$refreshData$6$TallyChartViewModel(ZLjava/lang/Void;)V

    return-void
.end method
