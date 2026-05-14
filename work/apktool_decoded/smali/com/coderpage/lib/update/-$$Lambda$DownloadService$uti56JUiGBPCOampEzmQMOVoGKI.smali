.class public final synthetic Lcom/coderpage/lib/update/-$$Lambda$DownloadService$uti56JUiGBPCOampEzmQMOVoGKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/lib/update/DownloadProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/lib/update/DownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/lib/update/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/lib/update/-$$Lambda$DownloadService$uti56JUiGBPCOampEzmQMOVoGKI;->f$0:Lcom/coderpage/lib/update/DownloadService;

    return-void
.end method


# virtual methods
.method public final update(JJZ)V
    .locals 6

    iget-object v0, p0, Lcom/coderpage/lib/update/-$$Lambda$DownloadService$uti56JUiGBPCOampEzmQMOVoGKI;->f$0:Lcom/coderpage/lib/update/DownloadService;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/coderpage/lib/update/DownloadService;->lambda$startDownload$0$DownloadService(JJZ)V

    return-void
.end method
