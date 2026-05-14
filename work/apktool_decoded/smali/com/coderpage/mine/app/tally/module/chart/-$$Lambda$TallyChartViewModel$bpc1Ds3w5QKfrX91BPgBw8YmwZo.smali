.class public final synthetic Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$bpc1Ds3w5QKfrX91BPgBw8YmwZo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/framework/ViewReliedTask;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$bpc1Ds3w5QKfrX91BPgBw8YmwZo;->f$0:Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/chart/-$$Lambda$TallyChartViewModel$bpc1Ds3w5QKfrX91BPgBw8YmwZo;->f$0:Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;

    check-cast p1, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/chart/TallyChartViewModel;->lambda$onCategoryDataItemClick$0(Lcom/coderpage/mine/app/tally/module/chart/data/CategoryData;Landroid/app/Activity;)V

    return-void
.end method
