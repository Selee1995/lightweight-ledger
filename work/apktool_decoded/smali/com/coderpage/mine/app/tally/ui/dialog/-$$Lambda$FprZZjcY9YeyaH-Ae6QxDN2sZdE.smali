.class public final synthetic Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FprZZjcY9YeyaH-Ae6QxDN2sZdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/framework/ViewReliedTask;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FprZZjcY9YeyaH-Ae6QxDN2sZdE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FprZZjcY9YeyaH-Ae6QxDN2sZdE;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FprZZjcY9YeyaH-Ae6QxDN2sZdE;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FprZZjcY9YeyaH-Ae6QxDN2sZdE;->INSTANCE:Lcom/coderpage/mine/app/tally/ui/dialog/-$$Lambda$FprZZjcY9YeyaH-Ae6QxDN2sZdE;

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

    check-cast p1, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    return-void
.end method
