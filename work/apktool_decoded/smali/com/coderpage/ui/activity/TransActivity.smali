.class public Lcom/coderpage/ui/activity/TransActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TransActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/ui/activity/TransActivity$Delegate;,
        Lcom/coderpage/ui/activity/TransActivity$Consumer;
    }
.end annotation


# static fields
.field private static final CALLBACK_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coderpage/ui/activity/TransActivity;",
            "Lcom/coderpage/ui/activity/TransActivity$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field protected static final EXTRA_DELEGATE:Ljava/lang/String; = "extra.delegate"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coderpage/ui/activity/TransActivity;->CALLBACK_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/app/Activity;Lcom/coderpage/ui/activity/TransActivity$Consumer;Lcom/coderpage/ui/activity/TransActivity$Delegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "activity",
            "consumer",
            "delegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/coderpage/ui/activity/TransActivity$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/coderpage/ui/activity/TransActivity$Delegate;",
            ")V"
        }
    .end annotation

    .line 48
    const-class v0, Lcom/coderpage/ui/activity/TransActivity;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/coderpage/ui/activity/TransActivity;->start(Landroid/content/Context;Landroid/app/Activity;Lcom/coderpage/ui/activity/TransActivity$Consumer;Lcom/coderpage/ui/activity/TransActivity$Delegate;Ljava/lang/Class;)V

    return-void
.end method

.method protected static start(Landroid/content/Context;Landroid/app/Activity;Lcom/coderpage/ui/activity/TransActivity$Consumer;Lcom/coderpage/ui/activity/TransActivity$Delegate;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "activity",
            "consumer",
            "delegate",
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/coderpage/ui/activity/TransActivity$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/coderpage/ui/activity/TransActivity$Delegate;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p4, "extra.delegate"

    .line 58
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 60
    invoke-interface {p2, v0}, Lcom/coderpage/ui/activity/TransActivity$Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    if-nez p1, :cond_2

    const/high16 p1, 0x10000000

    .line 63
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/app/Activity;Lcom/coderpage/ui/activity/TransActivity$Delegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "activity",
            "delegate"
        }
    .end annotation

    .line 41
    const-class v0, Lcom/coderpage/ui/activity/TransActivity;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/coderpage/ui/activity/TransActivity;->start(Landroid/content/Context;Landroid/app/Activity;Lcom/coderpage/ui/activity/TransActivity$Consumer;Lcom/coderpage/ui/activity/TransActivity$Delegate;Ljava/lang/Class;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/coderpage/ui/activity/TransActivity$Consumer;Lcom/coderpage/ui/activity/TransActivity$Delegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "consumer",
            "delegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coderpage/ui/activity/TransActivity$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/coderpage/ui/activity/TransActivity$Delegate;",
            ")V"
        }
    .end annotation

    .line 35
    const-class v0, Lcom/coderpage/ui/activity/TransActivity;

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Lcom/coderpage/ui/activity/TransActivity;->start(Landroid/content/Context;Landroid/app/Activity;Lcom/coderpage/ui/activity/TransActivity$Consumer;Lcom/coderpage/ui/activity/TransActivity$Delegate;Ljava/lang/Class;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/coderpage/ui/activity/TransActivity$Delegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "delegate"
        }
    .end annotation

    .line 29
    const-class v0, Lcom/coderpage/ui/activity/TransActivity;

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, p1, v0}, Lcom/coderpage/ui/activity/TransActivity;->start(Landroid/content/Context;Landroid/app/Activity;Lcom/coderpage/ui/activity/TransActivity$Consumer;Lcom/coderpage/ui/activity/TransActivity$Delegate;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/coderpage/ui/activity/TransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/ui/activity/TransActivity$Delegate;

    if-nez v0, :cond_0

    .line 155
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 156
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->dispatchTouchEvent(Lcom/coderpage/ui/activity/TransActivity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 159
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 147
    sget-object v0, Lcom/coderpage/ui/activity/TransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/ui/activity/TransActivity$Delegate;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onActivityResult(Lcom/coderpage/ui/activity/TransActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0, v0}, Lcom/coderpage/ui/activity/TransActivity;->overridePendingTransition(II)V

    .line 73
    invoke-virtual {p0}, Lcom/coderpage/ui/activity/TransActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra.delegate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 74
    instance-of v1, v0, Lcom/coderpage/ui/activity/TransActivity$Delegate;

    if-nez v1, :cond_0

    .line 75
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/coderpage/ui/activity/TransActivity;->finish()V

    return-void

    .line 79
    :cond_0
    check-cast v0, Lcom/coderpage/ui/activity/TransActivity$Delegate;

    .line 80
    sget-object v1, Lcom/coderpage/ui/activity/TransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v0, p0, p1}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onCreateBefore(Lcom/coderpage/ui/activity/TransActivity;Landroid/os/Bundle;)V

    .line 82
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {v0, p0, p1}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onCreated(Lcom/coderpage/ui/activity/TransActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 129
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 130
    sget-object v0, Lcom/coderpage/ui/activity/TransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/ui/activity/TransActivity$Delegate;

    if-nez v1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {v1, p0}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onDestroy(Lcom/coderpage/ui/activity/TransActivity;)V

    .line 133
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0, v0}, Lcom/coderpage/ui/activity/TransActivity;->overridePendingTransition(II)V

    .line 105
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 106
    sget-object v0, Lcom/coderpage/ui/activity/TransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/ui/activity/TransActivity$Delegate;

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {v0, p0}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onPaused(Lcom/coderpage/ui/activity/TransActivity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 138
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 139
    sget-object v0, Lcom/coderpage/ui/activity/TransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/ui/activity/TransActivity$Delegate;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onRequestPermissionsResult(Lcom/coderpage/ui/activity/TransActivity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 97
    sget-object v0, Lcom/coderpage/ui/activity/TransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/ui/activity/TransActivity$Delegate;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {v0, p0}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onResumed(Lcom/coderpage/ui/activity/TransActivity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 121
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    sget-object v0, Lcom/coderpage/ui/activity/TransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/ui/activity/TransActivity$Delegate;

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onSaveInstanceState(Lcom/coderpage/ui/activity/TransActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 89
    sget-object v0, Lcom/coderpage/ui/activity/TransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/ui/activity/TransActivity$Delegate;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {v0, p0}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onStarted(Lcom/coderpage/ui/activity/TransActivity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 114
    sget-object v0, Lcom/coderpage/ui/activity/TransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coderpage/ui/activity/TransActivity$Delegate;

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {v0, p0}, Lcom/coderpage/ui/activity/TransActivity$Delegate;->onStopped(Lcom/coderpage/ui/activity/TransActivity;)V

    return-void
.end method
