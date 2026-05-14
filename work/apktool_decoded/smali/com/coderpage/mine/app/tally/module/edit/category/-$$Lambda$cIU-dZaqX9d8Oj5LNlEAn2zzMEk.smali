.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$cIU-dZaqX9d8Oj5LNlEAn2zzMEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/framework/ViewReliedTask;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$cIU-dZaqX9d8Oj5LNlEAn2zzMEk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$cIU-dZaqX9d8Oj5LNlEAn2zzMEk;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$cIU-dZaqX9d8Oj5LNlEAn2zzMEk;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$cIU-dZaqX9d8Oj5LNlEAn2zzMEk;->INSTANCE:Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$cIU-dZaqX9d8Oj5LNlEAn2zzMEk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
