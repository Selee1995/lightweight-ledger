.class public Lcom/coderpage/framework/PresenterImpl;
.super Ljava/lang/Object;
.source "PresenterImpl.java"

# interfaces
.implements Lcom/coderpage/framework/Presenter;
.implements Lcom/coderpage/framework/UpdatableView$UserActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/coderpage/framework/Model<",
        "TQ;TUA;TM;TE;>;V::",
        "Lcom/coderpage/framework/UpdatableView<",
        "TM;TQ;TUA;TE;>;UA::",
        "Lcom/coderpage/framework/UserActionEnum;",
        "Q::",
        "Lcom/coderpage/framework/QueryEnum;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/coderpage/framework/Presenter<",
        "TQ;TUA;>;",
        "Lcom/coderpage/framework/UpdatableView$UserActionListener<",
        "TUA;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInitialQueriesToLoad:[Lcom/coderpage/framework/QueryEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TQ;"
        }
    .end annotation
.end field

.field private mModel:Lcom/coderpage/framework/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private mUpdatableViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private mValidUserActions:[Lcom/coderpage/framework/UserActionEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TUA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/coderpage/framework/PresenterImpl;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/framework/PresenterImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/coderpage/framework/Model;Lcom/coderpage/framework/UpdatableView;[Lcom/coderpage/framework/UserActionEnum;[Lcom/coderpage/framework/QueryEnum;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "model",
            "view",
            "validUserActions",
            "initialQueries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TV;[TUA;[TQ;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/coderpage/framework/UpdatableView;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 40
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coderpage/framework/PresenterImpl;-><init>(Lcom/coderpage/framework/Model;Ljava/util/List;[Lcom/coderpage/framework/UserActionEnum;[Lcom/coderpage/framework/QueryEnum;)V

    return-void
.end method

.method public constructor <init>(Lcom/coderpage/framework/Model;Ljava/util/List;[Lcom/coderpage/framework/UserActionEnum;[Lcom/coderpage/framework/QueryEnum;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "model",
            "views",
            "validUserActions",
            "initialQueries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Ljava/util/List<",
            "TV;>;[TUA;[TQ;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/coderpage/framework/PresenterImpl;->mModel:Lcom/coderpage/framework/Model;

    .line 48
    iput-object p3, p0, Lcom/coderpage/framework/PresenterImpl;->mValidUserActions:[Lcom/coderpage/framework/UserActionEnum;

    .line 49
    iput-object p4, p0, Lcom/coderpage/framework/PresenterImpl;->mInitialQueriesToLoad:[Lcom/coderpage/framework/QueryEnum;

    if-nez p2, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/coderpage/framework/PresenterImpl;->mUpdatableViews:Ljava/util/List;

    .line 53
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/framework/UpdatableView;

    .line 54
    iget-object p3, p0, Lcom/coderpage/framework/PresenterImpl;->mUpdatableViews:Ljava/util/List;

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/coderpage/framework/PresenterImpl;->mUpdatableViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 58
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/framework/UpdatableView;

    if-eqz p2, :cond_2

    .line 60
    invoke-interface {p2, p0}, Lcom/coderpage/framework/UpdatableView;->addListener(Lcom/coderpage/framework/UpdatableView$UserActionListener;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/framework/PresenterImpl;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/coderpage/framework/PresenterImpl;->mUpdatableViews:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected isUserActionValid(Lcom/coderpage/framework/UserActionEnum;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUA;)Z"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl;->mValidUserActions:[Lcom/coderpage/framework/UserActionEnum;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 153
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 154
    invoke-interface {v4}, Lcom/coderpage/framework/UserActionEnum;->getId()I

    move-result v4

    invoke-interface {p1}, Lcom/coderpage/framework/UserActionEnum;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public loadInitialQueries()V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl;->mInitialQueriesToLoad:[Lcom/coderpage/framework/QueryEnum;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 79
    iget-object v4, p0, Lcom/coderpage/framework/PresenterImpl;->mModel:Lcom/coderpage/framework/Model;

    new-instance v5, Lcom/coderpage/framework/PresenterImpl$1;

    invoke-direct {v5, p0}, Lcom/coderpage/framework/PresenterImpl$1;-><init>(Lcom/coderpage/framework/PresenterImpl;)V

    invoke-interface {v4, v3, v5}, Lcom/coderpage/framework/Model;->requestData(Lcom/coderpage/framework/QueryEnum;Lcom/coderpage/framework/Model$DataQueryCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 69
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl;->mUpdatableViews:Ljava/util/List;

    if-nez v0, :cond_3

    :cond_3
    return-void
.end method

.method public onUserAction(Lcom/coderpage/framework/UserActionEnum;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "action",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUA;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/coderpage/framework/PresenterImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserAction -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/LogUtils;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/coderpage/framework/PresenterImpl;->isUserActionValid(Lcom/coderpage/framework/UserActionEnum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/coderpage/framework/PresenterImpl;->mModel:Lcom/coderpage/framework/Model;

    new-instance v1, Lcom/coderpage/framework/PresenterImpl$2;

    invoke-direct {v1, p0, p2}, Lcom/coderpage/framework/PresenterImpl$2;-><init>(Lcom/coderpage/framework/PresenterImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/coderpage/framework/Model;->deliverUserAction(Lcom/coderpage/framework/UserActionEnum;Landroid/os/Bundle;Lcom/coderpage/framework/Model$UserActionCallback;)V

    return-void

    .line 141
    :cond_0
    iget-object p2, p0, Lcom/coderpage/framework/PresenterImpl;->mUpdatableViews:Ljava/util/List;

    if-nez p2, :cond_1

    return-void

    .line 144
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    .line 145
    invoke-interface {p1}, Lcom/coderpage/framework/UserActionEnum;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Have you called setValidUserActions on your presenter, with all the UserActionEnum you want to support?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
