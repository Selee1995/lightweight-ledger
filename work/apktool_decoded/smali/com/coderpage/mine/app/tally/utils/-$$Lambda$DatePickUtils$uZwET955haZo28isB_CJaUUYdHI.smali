.class public final synthetic Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$uZwET955haZo28isB_CJaUUYdHI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

.field public final synthetic f$3:Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$uZwET955haZo28isB_CJaUUYdHI;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$uZwET955haZo28isB_CJaUUYdHI;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$uZwET955haZo28isB_CJaUUYdHI;->f$2:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    iput-object p4, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$uZwET955haZo28isB_CJaUUYdHI;->f$3:Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$uZwET955haZo28isB_CJaUUYdHI;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$uZwET955haZo28isB_CJaUUYdHI;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$uZwET955haZo28isB_CJaUUYdHI;->f$2:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/utils/-$$Lambda$DatePickUtils$uZwET955haZo28isB_CJaUUYdHI;->f$3:Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/coderpage/mine/app/tally/utils/DatePickUtils;->lambda$showDatePickDialog_Low$1(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/coderpage/mine/app/tally/utils/DatePickUtils$OnDatePickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
