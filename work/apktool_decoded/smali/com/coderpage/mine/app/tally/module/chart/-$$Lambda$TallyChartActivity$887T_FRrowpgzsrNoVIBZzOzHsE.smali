.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$887T_FRrowpgzsrNoVIBZzOzHsE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$887T_FRrowpgzsrNoVIBZzOzHsE;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$887T_FRrowpgzsrNoVIBZzOzHsE;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$887T_FRrowpgzsrNoVIBZzOzHsE;->f$0:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartActivity$887T_FRrowpgzsrNoVIBZzOzHsE;->f$1:Ljava/util/List;

    check-cast p3, Lcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartActivity;->lambda$showMonthlyLineChart$10(Landroid/util/SparseArray;Ljava/util/List;IILcom/coderpage/mine/app/tally/module/chart/data/MonthlyData;)V

    return-void
.end method
