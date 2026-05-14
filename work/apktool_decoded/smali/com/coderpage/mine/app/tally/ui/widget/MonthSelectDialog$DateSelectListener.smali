.class public abstract Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$DateSelectListener;
.super Ljava/lang/Object;
.source "MonthSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DateSelectListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthSelect(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "month"
        }
    .end annotation

    return-void
.end method

.method public onYearSelect(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "year"
        }
    .end annotation

    return-void
.end method
