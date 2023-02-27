<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Job;
use App\Entity\Image;
class JobController extends AbstractController
{
    #[Route('/job', name: 'app_job')]
    public function index(): Response
    {
        $entityManager = $this->getDoctrine()->getManager();
        $job=new Job();
        $job->setType('Architect');
        $job->setCompany('offshoreBox');
        $job->setDescription('data science');
        $job->setExpiresAt(new \DateTimeImmutable());
        $job->setEmail('djo.messaoud96@gmail.com');
        $image= new Image();
        $image->setUrl('https://cdn.pixabay.com/photo/2015/10/30/10/03/gold-1013618_960_720.jpg');
        $image->setAlt('job de reve');
        $job->setImage($image); 
        $entityManager->persist($job);
        $entityManager->flush();
        return $this->render('job/index.html.twig', [
            'id' => $job->getId(),
        ]);
    }
    /**
* @Route("/job/{id}", name="job_show")
*/
public function show($id)
{
 $job = $this->getDoctrine()
 ->getRepository(Job::class)
 ->find($id);
 if (!$job) {
 throw $this->createNotFoundException(
 'No job found for id '.$id
 );
 }
 return $this->render('job/show.html.twig', [
    'job' =>$job
]);
}

}
