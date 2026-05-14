.class public Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;
.super Ljava/lang/Object;
.source "PermissionReqHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_PERMISSION:I = 0x6e


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mIsForceReq:Z

.field private mListener:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;

.field private mPermissionArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static isPermissionGranted(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permissionArray"
        }
    .end annotation

    const/4 v0, 0x1

    .line 87
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_4

    .line 90
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_2

    .line 93
    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 95
    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    :goto_2
    return v0
.end method

.method static synthetic lambda$getNotGrantedPermissionArray$0(Landroid/app/Activity;Ljava/util/List;IILjava/lang/String;)V
    .locals 0

    .line 74
    invoke-static {p0, p4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 76
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic lambda$getNotGrantedPermissionArray$1([Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 80
    aput-object p3, p0, p2

    return-void
.end method

.method static synthetic lambda$onRequestPermissionsResult$2([Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 137
    aput-object p3, p0, p2

    return-void
.end method

.method static synthetic lambda$onRequestPermissionsResult$3([Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 138
    aput-object p3, p0, p2

    return-void
.end method

.method static synthetic lambda$onRequestPermissionsResult$4([Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 169
    aput-object p3, p0, p2

    return-void
.end method

.method static synthetic lambda$onRequestPermissionsResult$5([Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 181
    aput-object p3, p0, p2

    return-void
.end method


# virtual methods
.method public getNotGrantedPermissionArray(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "permissionArray"
        }
    .end annotation

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1

    .line 71
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v1, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$OUlH8nVAHtG25xanbV7nclNbuN0;

    invoke-direct {v1, p1, v0}, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$OUlH8nVAHtG25xanbV7nclNbuN0;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-static {p2, v1}, Lcom/coderpage/base/utils/ArrayUtils;->forEach([Ljava/lang/Object;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 80
    new-instance p2, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$IcOGG0c2fI5aTGRhbBcZ5_DKoqQ;

    invoke-direct {p2, p1}, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$IcOGG0c2fI5aTGRhbBcZ5_DKoqQ;-><init>([Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
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

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_d

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mIsForceReq:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 126
    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_3

    .line 127
    aget v4, p3, v3

    .line 128
    aget-object v5, p2, v3

    if-nez v4, :cond_2

    .line 130
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_2
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    new-array v3, p3, [Ljava/lang/String;

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    .line 137
    new-instance v6, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$b3kc-qPu9Phi3_cslBy-kVt3mLU;

    invoke-direct {v6, v5}, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$b3kc-qPu9Phi3_cslBy-kVt3mLU;-><init>([Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 138
    new-instance p1, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$_0EDNll3vWZN6mTFG5tE-nbktJ8;

    invoke-direct {p1, v3}, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$_0EDNll3vWZN6mTFG5tE-nbktJ8;-><init>([Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    if-lez p3, :cond_5

    .line 141
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mListener:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;

    array-length p2, p2

    if-ne p3, p2, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-interface {p1, v1, v3}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;->onGranted(Z[Ljava/lang/String;)V

    :cond_5
    if-lez v4, :cond_6

    .line 144
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mListener:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;

    invoke-interface {p1, v5}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;->onDenied([Ljava/lang/String;)V

    :cond_6
    return-void

    .line 150
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    :goto_2
    array-length v4, p3

    if-ge v1, v4, :cond_a

    .line 154
    aget v4, p3, v1

    .line 155
    aget-object v5, p2, v1

    if-nez v4, :cond_8

    goto :goto_3

    .line 159
    :cond_8
    invoke-static {p1, v5}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 160
    aget-object v4, p2, v1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 162
    :cond_9
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 169
    new-instance p2, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$0GZvbGGQ5QDtel8gSiVe--ZNJnk;

    invoke-direct {p2, p1}, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$0GZvbGGQ5QDtel8gSiVe--ZNJnk;-><init>([Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 170
    iget-boolean p2, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mIsForceReq:Z

    iget-object p3, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mListener:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;

    invoke-virtual {p0, p2, p1, p3}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->requestPermission(Z[Ljava/lang/String;Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;)V

    return-void

    .line 175
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 176
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mListener:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;

    iget-object p2, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mPermissionArray:[Ljava/lang/String;

    invoke-interface {p1, v2, p2}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;->onGranted(Z[Ljava/lang/String;)V

    return-void

    .line 180
    :cond_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 181
    new-instance p2, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$0RJNyaGvCEJmFpnFVr0thYKcmvE;

    invoke-direct {p2, p1}, Lcom/coderpage/mine/app/tally/common/permission/-$$Lambda$PermissionReqHandler$0RJNyaGvCEJmFpnFVr0thYKcmvE;-><init>([Ljava/lang/String;)V

    invoke-static {v3, p2}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 182
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mListener:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;

    invoke-interface {p2, p1}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;->onDenied([Ljava/lang/String;)V

    :cond_d
    :goto_4
    return-void
.end method

.method public requestPermission(Z[Ljava/lang/String;Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "forceReq",
            "permissionArray",
            "listener"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iput-boolean p1, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mIsForceReq:Z

    .line 51
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mPermissionArray:[Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mListener:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;

    .line 54
    invoke-virtual {p0, v0, p2}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->getNotGrantedPermissionArray(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 56
    array-length p3, p1

    if-nez p3, :cond_1

    .line 57
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler;->mListener:Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;

    const/4 p3, 0x1

    invoke-interface {p1, p3, p2}, Lcom/coderpage/mine/app/tally/common/permission/PermissionReqHandler$Listener;->onGranted(Z[Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 p2, 0x6e

    .line 61
    invoke-static {v0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method
