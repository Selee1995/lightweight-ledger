.class public Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;
.super Ljava/lang/Object;
.source "DatePickUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/utils/DatePickUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnDatePickListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    return-void
.end method

.method public onConfirmClick(Landroid/content/DialogInterface;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "timeInMillis"
        }
    .end annotation

    return-void
.end method

.method public onDatePick(Landroid/content/DialogInterface;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "year",
            "month",
            "dayOfMonth"
        }
    .end annotation

    return-void
.end method
