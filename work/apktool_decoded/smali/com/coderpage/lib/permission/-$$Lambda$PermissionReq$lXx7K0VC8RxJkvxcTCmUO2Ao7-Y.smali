.class public final synthetic Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$lXx7K0VC8RxJkvxcTCmUO2Ao7-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$lXx7K0VC8RxJkvxcTCmUO2Ao7-Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$lXx7K0VC8RxJkvxcTCmUO2Ao7-Y;

    invoke-direct {v0}, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$lXx7K0VC8RxJkvxcTCmUO2Ao7-Y;-><init>()V

    sput-object v0, Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$lXx7K0VC8RxJkvxcTCmUO2Ao7-Y;->INSTANCE:Lcom/coderpage/lib/permission/-$$Lambda$PermissionReq$lXx7K0VC8RxJkvxcTCmUO2Ao7-Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rationale(Lcom/coderpage/ui/activity/TransActivity;Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener$ShouldRequest;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/coderpage/lib/permission/PermissionReq;->lambda$request$1(Lcom/coderpage/ui/activity/TransActivity;Lcom/coderpage/lib/permission/PermissionUtils$OnRationaleListener$ShouldRequest;)V

    return-void
.end method
