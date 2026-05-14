.class public final synthetic Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$axbo0k2UldUznnSa_30yCKhOviM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$axbo0k2UldUznnSa_30yCKhOviM;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$axbo0k2UldUznnSa_30yCKhOviM;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils;->lambda$showDatePickDialog_Low$2(Ljava/lang/String;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
