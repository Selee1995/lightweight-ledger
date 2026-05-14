.class Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;
.super Ljava/lang/Object;
.source "TopLinearPercentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelFormatter"
.end annotation


# instance fields
.field private decimalFormat:Ljava/text/DecimalFormat;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;


# direct methods
.method private constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.00"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$1;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView;)V

    return-void
.end method


# virtual methods
.method formatLabel(Ljava/lang/String;DD)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "value",
            "percent"
        }
    .end annotation

    .line 227
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/TopLinearPercentView$LabelFormatter;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
